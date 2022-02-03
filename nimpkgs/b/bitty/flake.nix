{
  description = ''Utilities with dealing with 1d and 2d bit arrays.'';
  inputs."bitty-master".url = "path:./master";
  inputs."bitty-0_1_0".url = "path:./0_1_0";
  inputs."bitty-0_1_1".url = "path:./0_1_1";
  inputs."bitty-0_1_2".url = "path:./0_1_2";
  inputs."bitty-0_1_3".url = "path:./0_1_3";
  inputs."bitty-0_1_4".url = "path:./0_1_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}