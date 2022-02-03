{
  description = ''"pointers" to cached AST that instantiate routines when called'';
  inputs."applicates-master".url = "path:./master";
  inputs."applicates-0_1_1".url = "path:./0_1_1";
  inputs."applicates-v0_1_0".url = "path:./v0_1_0";
  inputs."applicates-v0_1_1".url = "path:./v0_1_1";
  inputs."applicates-v0_2_0".url = "path:./v0_2_0";
  inputs."applicates-v0_3_0".url = "path:./v0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}