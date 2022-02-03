{
  description = ''Bindings for Closure Compiler web API.'';
  inputs."closure_compiler-master".url = "path:./master";
  inputs."closure_compiler-v0_2".url = "path:./v0_2";
  inputs."closure_compiler-v0_3".url = "path:./v0_3";
  inputs."closure_compiler-v0_3_1".url = "path:./v0_3_1";
  inputs."closure_compiler-v0_3_2".url = "path:./v0_3_2";
  inputs."closure_compiler-v0_3_3".url = "path:./v0_3_3";
  inputs."closure_compiler-v0_3_4".url = "path:./v0_3_4";
  inputs."closure_compiler-v0_3_5".url = "path:./v0_3_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}