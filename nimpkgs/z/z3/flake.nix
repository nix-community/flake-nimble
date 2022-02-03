{
  description = ''Nim Z3 theorem prover bindings'';
  inputs."z3-master".url = "path:./master";
  inputs."z3-v0_1_0".url = "path:./v0_1_0";
  inputs."z3-v0_1_1".url = "path:./v0_1_1";
  inputs."z3-v0_1_2".url = "path:./v0_1_2";
  inputs."z3-v0_1_3".url = "path:./v0_1_3";
  inputs."z3-v0_1_4".url = "path:./v0_1_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}