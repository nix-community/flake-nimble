{
  description = ''Bindings for Closure Compiler web API.'';
  inputs.src-closure_compiler-v0_3_2.flake = false;
  inputs.src-closure_compiler-v0_3_2.type = "github";
  inputs.src-closure_compiler-v0_3_2.owner = "yglukhov";
  inputs.src-closure_compiler-v0_3_2.repo = "closure_compiler";
  inputs.src-closure_compiler-v0_3_2.ref = "refs/tags/v0.3.2";
  
  outputs = { self, nixpkgs, src-closure_compiler-v0_3_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-closure_compiler-v0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-closure_compiler-v0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}