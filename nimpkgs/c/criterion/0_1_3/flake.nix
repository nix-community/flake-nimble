{
  description = ''Statistic-driven microbenchmark framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-criterion-0_1_3.flake = false;
  inputs.src-criterion-0_1_3.type = "github";
  inputs.src-criterion-0_1_3.owner = "disruptek";
  inputs.src-criterion-0_1_3.repo = "criterion";
  inputs.src-criterion-0_1_3.ref = "refs/tags/0.1.3";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-criterion-0_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-criterion-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-criterion-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}