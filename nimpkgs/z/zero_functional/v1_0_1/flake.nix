{
  description = ''A library providing zero-cost chaining for functional abstractions in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-zero_functional-v1_0_1.flake = false;
  inputs.src-zero_functional-v1_0_1.type = "github";
  inputs.src-zero_functional-v1_0_1.owner = "zero-functional";
  inputs.src-zero_functional-v1_0_1.repo = "zero-functional";
  inputs.src-zero_functional-v1_0_1.ref = "refs/tags/v1.0.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-zero_functional-v1_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zero_functional-v1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zero_functional-v1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}