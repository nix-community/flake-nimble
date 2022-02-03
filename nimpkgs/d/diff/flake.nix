{
  description = ''Library for finding the differences between two sequences'';
  inputs."diff-master".url = "path:./master";
  inputs."diff-0_1_0".url = "path:./0_1_0";
  inputs."diff-0_2_0".url = "path:./0_2_0";
  inputs."diff-0_2_1".url = "path:./0_2_1";
  inputs."diff-0_3_0".url = "path:./0_3_0";
  inputs."diff-0_4_0".url = "path:./0_4_0";
  inputs."diff-0_5_0".url = "path:./0_5_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}