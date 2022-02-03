{
  description = ''Language Handler for executing Nim inside postgres as a procedural language'';
  inputs."plnim-master".url = "path:./master";
  inputs."plnim-v0_1_0".url = "path:./v0_1_0";
  inputs."plnim-v0_1_1".url = "path:./v0_1_1";
  inputs."plnim-v0_1_2".url = "path:./v0_1_2";
  inputs."plnim-v0_1_3".url = "path:./v0_1_3";
  inputs."plnim-v0_1_4".url = "path:./v0_1_4";
  inputs."plnim-v0_1_5".url = "path:./v0_1_5";
  inputs."plnim-v0_1_6".url = "path:./v0_1_6";
  inputs."plnim-v0_2_0".url = "path:./v0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}