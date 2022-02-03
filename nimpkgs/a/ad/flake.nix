{
  description = ''A simple RPN calculator'';
  inputs."ad-master".url = "path:./master";
  inputs."ad-0_6_3".url = "path:./0_6_3";
  inputs."ad-0_6_4".url = "path:./0_6_4";
  inputs."ad-0_7".url = "path:./0_7";
  inputs."ad-0_7_1".url = "path:./0_7_1";
  inputs."ad-0_7_2".url = "path:./0_7_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}