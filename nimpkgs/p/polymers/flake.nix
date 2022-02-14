{
  description = ''A library of components and systems for use with the Polymorph ECS'';
  inputs."polymers-master".url = "path:./master";
  inputs."Polymers-0_2_0".url = "path:./0_2_0";
  inputs."polymers-v0_1_0".url = "path:./v0_1_0";
  inputs."polymers-v0_1_1".url = "path:./v0_1_1";
  inputs."Polymers-v0_3_0".url = "path:./v0_3_0";
  inputs."polymers-v0_3_1".url = "path:./v0_3_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}