{
  description = ''An entity-component-system with a focus on compile time optimisation'';
  inputs."polymorph-master".url = "path:./master";
  inputs."Polymorph-v0_1_0".url = "path:./v0_1_0";
  inputs."Polymorph-v0_2_0".url = "path:./v0_2_0";
  inputs."Polymorph-v0_2_1".url = "path:./v0_2_1";
  inputs."polymorph-v0_2_2".url = "path:./v0_2_2";
  inputs."polymorph-v0_2_3".url = "path:./v0_2_3";
  inputs."polymorph-v0_3_0".url = "path:./v0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}