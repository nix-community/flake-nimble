{
  description = ''measuring execution times written in nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-timeit-v0_3_4.flake = false;
  inputs.src-timeit-v0_3_4.type = "github";
  inputs.src-timeit-v0_3_4.owner = "xflywind";
  inputs.src-timeit-v0_3_4.repo = "timeit";
  inputs.src-timeit-v0_3_4.ref = "refs/tags/v0.3.4";
  inputs.src-timeit-v0_3_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-timeit-v0_3_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timeit-v0_3_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-timeit-v0_3_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}