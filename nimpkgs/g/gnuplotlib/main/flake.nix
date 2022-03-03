{
  description = ''gnuplot interface'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-gnuplotlib-main.flake = false;
  inputs.src-gnuplotlib-main.type = "github";
  inputs.src-gnuplotlib-main.owner = "planetis-m";
  inputs.src-gnuplotlib-main.repo = "gnuplotlib";
  inputs.src-gnuplotlib-main.ref = "refs/heads/main";
  inputs.src-gnuplotlib-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-gnuplotlib-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gnuplotlib-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gnuplotlib-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}