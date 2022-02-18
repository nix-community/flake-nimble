{
  description = ''Statistic-driven microbenchmark framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-criterion-master.flake = false;
  inputs.src-criterion-master.type = "github";
  inputs.src-criterion-master.owner = "disruptek";
  inputs.src-criterion-master.repo = "criterion";
  inputs.src-criterion-master.ref = "refs/heads/master";
  
  
  inputs."https://github.com/disruptek/balls".type = "github";
  inputs."https://github.com/disruptek/balls".owner = "riinr";
  inputs."https://github.com/disruptek/balls".repo = "flake-nimble";
  inputs."https://github.com/disruptek/balls".ref = "flake-pinning";
  inputs."https://github.com/disruptek/balls".dir = "nimpkgs/h/https://github.com/disruptek/balls";

  outputs = { self, nixpkgs, flakeNimbleLib, src-criterion-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-criterion-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-criterion-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}