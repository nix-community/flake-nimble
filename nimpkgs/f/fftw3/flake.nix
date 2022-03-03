{
  description = ''Bindings to the FFTW library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."fftw3-master".type = "github";
  inputs."fftw3-master".owner = "riinr";
  inputs."fftw3-master".repo = "flake-nimble";
  inputs."fftw3-master".ref = "flake-pinning";
  inputs."fftw3-master".dir = "nimpkgs/f/fftw3/master";
  inputs."fftw3-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fftw3-v0_2_0".type = "github";
  inputs."fftw3-v0_2_0".owner = "riinr";
  inputs."fftw3-v0_2_0".repo = "flake-nimble";
  inputs."fftw3-v0_2_0".ref = "flake-pinning";
  inputs."fftw3-v0_2_0".dir = "nimpkgs/f/fftw3/v0_2_0";
  inputs."fftw3-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fftw3-v0_2_1".type = "github";
  inputs."fftw3-v0_2_1".owner = "riinr";
  inputs."fftw3-v0_2_1".repo = "flake-nimble";
  inputs."fftw3-v0_2_1".ref = "flake-pinning";
  inputs."fftw3-v0_2_1".dir = "nimpkgs/f/fftw3/v0_2_1";
  inputs."fftw3-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fftw3-v0_2_2".type = "github";
  inputs."fftw3-v0_2_2".owner = "riinr";
  inputs."fftw3-v0_2_2".repo = "flake-nimble";
  inputs."fftw3-v0_2_2".ref = "flake-pinning";
  inputs."fftw3-v0_2_2".dir = "nimpkgs/f/fftw3/v0_2_2";
  inputs."fftw3-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fftw3-v0_2_3".type = "github";
  inputs."fftw3-v0_2_3".owner = "riinr";
  inputs."fftw3-v0_2_3".repo = "flake-nimble";
  inputs."fftw3-v0_2_3".ref = "flake-pinning";
  inputs."fftw3-v0_2_3".dir = "nimpkgs/f/fftw3/v0_2_3";
  inputs."fftw3-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fftw3-v0_2_4".type = "github";
  inputs."fftw3-v0_2_4".owner = "riinr";
  inputs."fftw3-v0_2_4".repo = "flake-nimble";
  inputs."fftw3-v0_2_4".ref = "flake-pinning";
  inputs."fftw3-v0_2_4".dir = "nimpkgs/f/fftw3/v0_2_4";
  inputs."fftw3-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fftw3-v0_2_5".type = "github";
  inputs."fftw3-v0_2_5".owner = "riinr";
  inputs."fftw3-v0_2_5".repo = "flake-nimble";
  inputs."fftw3-v0_2_5".ref = "flake-pinning";
  inputs."fftw3-v0_2_5".dir = "nimpkgs/f/fftw3/v0_2_5";
  inputs."fftw3-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fftw3-v0_2_6".type = "github";
  inputs."fftw3-v0_2_6".owner = "riinr";
  inputs."fftw3-v0_2_6".repo = "flake-nimble";
  inputs."fftw3-v0_2_6".ref = "flake-pinning";
  inputs."fftw3-v0_2_6".dir = "nimpkgs/f/fftw3/v0_2_6";
  inputs."fftw3-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fftw3-v0_2_7".type = "github";
  inputs."fftw3-v0_2_7".owner = "riinr";
  inputs."fftw3-v0_2_7".repo = "flake-nimble";
  inputs."fftw3-v0_2_7".ref = "flake-pinning";
  inputs."fftw3-v0_2_7".dir = "nimpkgs/f/fftw3/v0_2_7";
  inputs."fftw3-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fftw3-v0_2_8".type = "github";
  inputs."fftw3-v0_2_8".owner = "riinr";
  inputs."fftw3-v0_2_8".repo = "flake-nimble";
  inputs."fftw3-v0_2_8".ref = "flake-pinning";
  inputs."fftw3-v0_2_8".dir = "nimpkgs/f/fftw3/v0_2_8";
  inputs."fftw3-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fftw3-v0_2_9".type = "github";
  inputs."fftw3-v0_2_9".owner = "riinr";
  inputs."fftw3-v0_2_9".repo = "flake-nimble";
  inputs."fftw3-v0_2_9".ref = "flake-pinning";
  inputs."fftw3-v0_2_9".dir = "nimpkgs/f/fftw3/v0_2_9";
  inputs."fftw3-v0_2_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_2_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fftw3-v0_3_0".type = "github";
  inputs."fftw3-v0_3_0".owner = "riinr";
  inputs."fftw3-v0_3_0".repo = "flake-nimble";
  inputs."fftw3-v0_3_0".ref = "flake-pinning";
  inputs."fftw3-v0_3_0".dir = "nimpkgs/f/fftw3/v0_3_0";
  inputs."fftw3-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fftw3-v0_3_1".type = "github";
  inputs."fftw3-v0_3_1".owner = "riinr";
  inputs."fftw3-v0_3_1".repo = "flake-nimble";
  inputs."fftw3-v0_3_1".ref = "flake-pinning";
  inputs."fftw3-v0_3_1".dir = "nimpkgs/f/fftw3/v0_3_1";
  inputs."fftw3-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fftw3-v0_4_0".type = "github";
  inputs."fftw3-v0_4_0".owner = "riinr";
  inputs."fftw3-v0_4_0".repo = "flake-nimble";
  inputs."fftw3-v0_4_0".ref = "flake-pinning";
  inputs."fftw3-v0_4_0".dir = "nimpkgs/f/fftw3/v0_4_0";
  inputs."fftw3-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fftw3-v0_4_1".type = "github";
  inputs."fftw3-v0_4_1".owner = "riinr";
  inputs."fftw3-v0_4_1".repo = "flake-nimble";
  inputs."fftw3-v0_4_1".ref = "flake-pinning";
  inputs."fftw3-v0_4_1".dir = "nimpkgs/f/fftw3/v0_4_1";
  inputs."fftw3-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fftw3-v0_4_2".type = "github";
  inputs."fftw3-v0_4_2".owner = "riinr";
  inputs."fftw3-v0_4_2".repo = "flake-nimble";
  inputs."fftw3-v0_4_2".ref = "flake-pinning";
  inputs."fftw3-v0_4_2".dir = "nimpkgs/f/fftw3/v0_4_2";
  inputs."fftw3-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fftw3-v0_4_3".type = "github";
  inputs."fftw3-v0_4_3".owner = "riinr";
  inputs."fftw3-v0_4_3".repo = "flake-nimble";
  inputs."fftw3-v0_4_3".ref = "flake-pinning";
  inputs."fftw3-v0_4_3".dir = "nimpkgs/f/fftw3/v0_4_3";
  inputs."fftw3-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fftw3-v0_4_4".type = "github";
  inputs."fftw3-v0_4_4".owner = "riinr";
  inputs."fftw3-v0_4_4".repo = "flake-nimble";
  inputs."fftw3-v0_4_4".ref = "flake-pinning";
  inputs."fftw3-v0_4_4".dir = "nimpkgs/f/fftw3/v0_4_4";
  inputs."fftw3-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fftw3-v0_4_5".type = "github";
  inputs."fftw3-v0_4_5".owner = "riinr";
  inputs."fftw3-v0_4_5".repo = "flake-nimble";
  inputs."fftw3-v0_4_5".ref = "flake-pinning";
  inputs."fftw3-v0_4_5".dir = "nimpkgs/f/fftw3/v0_4_5";
  inputs."fftw3-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fftw3-v0_4_6".type = "github";
  inputs."fftw3-v0_4_6".owner = "riinr";
  inputs."fftw3-v0_4_6".repo = "flake-nimble";
  inputs."fftw3-v0_4_6".ref = "flake-pinning";
  inputs."fftw3-v0_4_6".dir = "nimpkgs/f/fftw3/v0_4_6";
  inputs."fftw3-v0_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fftw3-v0_4_7".type = "github";
  inputs."fftw3-v0_4_7".owner = "riinr";
  inputs."fftw3-v0_4_7".repo = "flake-nimble";
  inputs."fftw3-v0_4_7".ref = "flake-pinning";
  inputs."fftw3-v0_4_7".dir = "nimpkgs/f/fftw3/v0_4_7";
  inputs."fftw3-v0_4_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_4_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fftw3-v0_5_0".type = "github";
  inputs."fftw3-v0_5_0".owner = "riinr";
  inputs."fftw3-v0_5_0".repo = "flake-nimble";
  inputs."fftw3-v0_5_0".ref = "flake-pinning";
  inputs."fftw3-v0_5_0".dir = "nimpkgs/f/fftw3/v0_5_0";
  inputs."fftw3-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fftw3-v0_5_1".type = "github";
  inputs."fftw3-v0_5_1".owner = "riinr";
  inputs."fftw3-v0_5_1".repo = "flake-nimble";
  inputs."fftw3-v0_5_1".ref = "flake-pinning";
  inputs."fftw3-v0_5_1".dir = "nimpkgs/f/fftw3/v0_5_1";
  inputs."fftw3-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}