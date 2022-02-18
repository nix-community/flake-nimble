{
  description = ''measuring execution times written in nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-timeit-v0_1_6.flake = false;
  inputs.src-timeit-v0_1_6.type = "github";
  inputs.src-timeit-v0_1_6.owner = "xflywind";
  inputs.src-timeit-v0_1_6.repo = "timeit";
  inputs.src-timeit-v0_1_6.ref = "refs/tags/v0.1.6";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-timeit-v0_1_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timeit-v0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-timeit-v0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}