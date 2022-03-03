{
  description = ''A library providing zero-cost chaining for functional abstractions in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-zero_functional-v0_0_6.flake = false;
  inputs.src-zero_functional-v0_0_6.type = "github";
  inputs.src-zero_functional-v0_0_6.owner = "zero-functional";
  inputs.src-zero_functional-v0_0_6.repo = "zero-functional";
  inputs.src-zero_functional-v0_0_6.ref = "refs/tags/v0.0.6";
  inputs.src-zero_functional-v0_0_6.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-zero_functional-v0_0_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zero_functional-v0_0_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zero_functional-v0_0_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}