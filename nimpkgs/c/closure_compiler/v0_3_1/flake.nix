{
  description = ''Bindings for Closure Compiler web API.'';
  inputs.src-closure_compiler-v0_3_1.flake = false;
  inputs.src-closure_compiler-v0_3_1.type = "github";
  inputs.src-closure_compiler-v0_3_1.owner = "yglukhov";
  inputs.src-closure_compiler-v0_3_1.repo = "closure_compiler";
  inputs.src-closure_compiler-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, src-closure_compiler-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-closure_compiler-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-closure_compiler-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}