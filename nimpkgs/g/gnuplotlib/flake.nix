{
  description = ''gnuplot interface'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."gnuplotlib-main".type = "github";
  inputs."gnuplotlib-main".owner = "riinr";
  inputs."gnuplotlib-main".repo = "flake-nimble";
  inputs."gnuplotlib-main".ref = "flake-pinning";
  inputs."gnuplotlib-main".dir = "nimpkgs/g/gnuplotlib/main";
  inputs."gnuplotlib-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnuplotlib-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gnuplotlib-v1_0_0".type = "github";
  inputs."gnuplotlib-v1_0_0".owner = "riinr";
  inputs."gnuplotlib-v1_0_0".repo = "flake-nimble";
  inputs."gnuplotlib-v1_0_0".ref = "flake-pinning";
  inputs."gnuplotlib-v1_0_0".dir = "nimpkgs/g/gnuplotlib/v1_0_0";
  inputs."gnuplotlib-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnuplotlib-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gnuplotlib-v2_0_0".type = "github";
  inputs."gnuplotlib-v2_0_0".owner = "riinr";
  inputs."gnuplotlib-v2_0_0".repo = "flake-nimble";
  inputs."gnuplotlib-v2_0_0".ref = "flake-pinning";
  inputs."gnuplotlib-v2_0_0".dir = "nimpkgs/g/gnuplotlib/v2_0_0";
  inputs."gnuplotlib-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnuplotlib-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gnuplotlib-v2_1_0".type = "github";
  inputs."gnuplotlib-v2_1_0".owner = "riinr";
  inputs."gnuplotlib-v2_1_0".repo = "flake-nimble";
  inputs."gnuplotlib-v2_1_0".ref = "flake-pinning";
  inputs."gnuplotlib-v2_1_0".dir = "nimpkgs/g/gnuplotlib/v2_1_0";
  inputs."gnuplotlib-v2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnuplotlib-v2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gnuplotlib-v2_5_0".type = "github";
  inputs."gnuplotlib-v2_5_0".owner = "riinr";
  inputs."gnuplotlib-v2_5_0".repo = "flake-nimble";
  inputs."gnuplotlib-v2_5_0".ref = "flake-pinning";
  inputs."gnuplotlib-v2_5_0".dir = "nimpkgs/g/gnuplotlib/v2_5_0";
  inputs."gnuplotlib-v2_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnuplotlib-v2_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gnuplotlib-v2_6_1".type = "github";
  inputs."gnuplotlib-v2_6_1".owner = "riinr";
  inputs."gnuplotlib-v2_6_1".repo = "flake-nimble";
  inputs."gnuplotlib-v2_6_1".ref = "flake-pinning";
  inputs."gnuplotlib-v2_6_1".dir = "nimpkgs/g/gnuplotlib/v2_6_1";
  inputs."gnuplotlib-v2_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnuplotlib-v2_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}