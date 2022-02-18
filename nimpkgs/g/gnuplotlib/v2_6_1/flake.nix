{
  description = ''gnuplot interface'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-gnuplotlib-v2_6_1.flake = false;
  inputs.src-gnuplotlib-v2_6_1.type = "github";
  inputs.src-gnuplotlib-v2_6_1.owner = "planetis-m";
  inputs.src-gnuplotlib-v2_6_1.repo = "gnuplotlib";
  inputs.src-gnuplotlib-v2_6_1.ref = "refs/tags/v2.6.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-gnuplotlib-v2_6_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gnuplotlib-v2_6_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gnuplotlib-v2_6_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}