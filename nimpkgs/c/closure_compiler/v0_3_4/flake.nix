{
  description = ''Bindings for Closure Compiler web API.'';
  inputs.src-closure_compiler-v0_3_4.flake = false;
  inputs.src-closure_compiler-v0_3_4.type = "github";
  inputs.src-closure_compiler-v0_3_4.owner = "yglukhov";
  inputs.src-closure_compiler-v0_3_4.repo = "closure_compiler";
  inputs.src-closure_compiler-v0_3_4.ref = "refs/tags/v0.3.4";
  
  outputs = { self, nixpkgs, src-closure_compiler-v0_3_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-closure_compiler-v0_3_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-closure_compiler-v0_3_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}