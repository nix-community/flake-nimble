{
  description = ''Statistic-driven microbenchmark framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-criterion-0_1_0.flake = false;
  inputs.src-criterion-0_1_0.type = "github";
  inputs.src-criterion-0_1_0.owner = "disruptek";
  inputs.src-criterion-0_1_0.repo = "criterion";
  inputs.src-criterion-0_1_0.ref = "refs/tags/0.1.0";
  inputs.src-criterion-0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-criterion-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-criterion-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-criterion-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}