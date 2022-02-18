{
  description = ''Bindings for Closure Compiler web API.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-closure_compiler-v0_3_5.flake = false;
  inputs.src-closure_compiler-v0_3_5.type = "github";
  inputs.src-closure_compiler-v0_3_5.owner = "yglukhov";
  inputs.src-closure_compiler-v0_3_5.repo = "closure_compiler";
  inputs.src-closure_compiler-v0_3_5.ref = "refs/tags/v0.3.5";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-closure_compiler-v0_3_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-closure_compiler-v0_3_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-closure_compiler-v0_3_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}