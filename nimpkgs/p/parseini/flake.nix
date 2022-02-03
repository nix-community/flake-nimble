{
  description = ''A high-performance ini parse library for nim.'';
  inputs."parseini-master".url = "path:./master";
  inputs."parseini-0_1_0".url = "path:./0_1_0";
  inputs."parseini-0_2_0".url = "path:./0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}