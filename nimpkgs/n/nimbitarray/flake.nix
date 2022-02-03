{
  description = ''A simple bitarray library for nim.'';
  inputs."nimbitarray-master".url = "path:./master";
  inputs."nimbitarray-0_2_0".url = "path:./0_2_0";
  inputs."nimbitarray-0_2_1".url = "path:./0_2_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}