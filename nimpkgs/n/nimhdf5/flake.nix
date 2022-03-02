{
  description = ''Bindings for the HDF5 data format C library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimhdf5-master".type = "github";
  inputs."nimhdf5-master".owner = "riinr";
  inputs."nimhdf5-master".repo = "flake-nimble";
  inputs."nimhdf5-master".ref = "flake-pinning";
  inputs."nimhdf5-master".dir = "nimpkgs/n/nimhdf5/master";
  inputs."nimhdf5-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_2_10".type = "github";
  inputs."nimhdf5-v0_2_10".owner = "riinr";
  inputs."nimhdf5-v0_2_10".repo = "flake-nimble";
  inputs."nimhdf5-v0_2_10".ref = "flake-pinning";
  inputs."nimhdf5-v0_2_10".dir = "nimpkgs/n/nimhdf5/v0_2_10";
  inputs."nimhdf5-v0_2_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_2_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_2_11".type = "github";
  inputs."nimhdf5-v0_2_11".owner = "riinr";
  inputs."nimhdf5-v0_2_11".repo = "flake-nimble";
  inputs."nimhdf5-v0_2_11".ref = "flake-pinning";
  inputs."nimhdf5-v0_2_11".dir = "nimpkgs/n/nimhdf5/v0_2_11";
  inputs."nimhdf5-v0_2_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_2_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_2_12".type = "github";
  inputs."nimhdf5-v0_2_12".owner = "riinr";
  inputs."nimhdf5-v0_2_12".repo = "flake-nimble";
  inputs."nimhdf5-v0_2_12".ref = "flake-pinning";
  inputs."nimhdf5-v0_2_12".dir = "nimpkgs/n/nimhdf5/v0_2_12";
  inputs."nimhdf5-v0_2_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_2_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_2_13".type = "github";
  inputs."nimhdf5-v0_2_13".owner = "riinr";
  inputs."nimhdf5-v0_2_13".repo = "flake-nimble";
  inputs."nimhdf5-v0_2_13".ref = "flake-pinning";
  inputs."nimhdf5-v0_2_13".dir = "nimpkgs/n/nimhdf5/v0_2_13";
  inputs."nimhdf5-v0_2_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_2_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_2_14".type = "github";
  inputs."nimhdf5-v0_2_14".owner = "riinr";
  inputs."nimhdf5-v0_2_14".repo = "flake-nimble";
  inputs."nimhdf5-v0_2_14".ref = "flake-pinning";
  inputs."nimhdf5-v0_2_14".dir = "nimpkgs/n/nimhdf5/v0_2_14";
  inputs."nimhdf5-v0_2_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_2_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_2_15".type = "github";
  inputs."nimhdf5-v0_2_15".owner = "riinr";
  inputs."nimhdf5-v0_2_15".repo = "flake-nimble";
  inputs."nimhdf5-v0_2_15".ref = "flake-pinning";
  inputs."nimhdf5-v0_2_15".dir = "nimpkgs/n/nimhdf5/v0_2_15";
  inputs."nimhdf5-v0_2_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_2_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_2_6".type = "github";
  inputs."nimhdf5-v0_2_6".owner = "riinr";
  inputs."nimhdf5-v0_2_6".repo = "flake-nimble";
  inputs."nimhdf5-v0_2_6".ref = "flake-pinning";
  inputs."nimhdf5-v0_2_6".dir = "nimpkgs/n/nimhdf5/v0_2_6";
  inputs."nimhdf5-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_2_7".type = "github";
  inputs."nimhdf5-v0_2_7".owner = "riinr";
  inputs."nimhdf5-v0_2_7".repo = "flake-nimble";
  inputs."nimhdf5-v0_2_7".ref = "flake-pinning";
  inputs."nimhdf5-v0_2_7".dir = "nimpkgs/n/nimhdf5/v0_2_7";
  inputs."nimhdf5-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_2_8".type = "github";
  inputs."nimhdf5-v0_2_8".owner = "riinr";
  inputs."nimhdf5-v0_2_8".repo = "flake-nimble";
  inputs."nimhdf5-v0_2_8".ref = "flake-pinning";
  inputs."nimhdf5-v0_2_8".dir = "nimpkgs/n/nimhdf5/v0_2_8";
  inputs."nimhdf5-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_2_9".type = "github";
  inputs."nimhdf5-v0_2_9".owner = "riinr";
  inputs."nimhdf5-v0_2_9".repo = "flake-nimble";
  inputs."nimhdf5-v0_2_9".ref = "flake-pinning";
  inputs."nimhdf5-v0_2_9".dir = "nimpkgs/n/nimhdf5/v0_2_9";
  inputs."nimhdf5-v0_2_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_2_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_3_0".type = "github";
  inputs."nimhdf5-v0_3_0".owner = "riinr";
  inputs."nimhdf5-v0_3_0".repo = "flake-nimble";
  inputs."nimhdf5-v0_3_0".ref = "flake-pinning";
  inputs."nimhdf5-v0_3_0".dir = "nimpkgs/n/nimhdf5/v0_3_0";
  inputs."nimhdf5-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_3_1".type = "github";
  inputs."nimhdf5-v0_3_1".owner = "riinr";
  inputs."nimhdf5-v0_3_1".repo = "flake-nimble";
  inputs."nimhdf5-v0_3_1".ref = "flake-pinning";
  inputs."nimhdf5-v0_3_1".dir = "nimpkgs/n/nimhdf5/v0_3_1";
  inputs."nimhdf5-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_3_10".type = "github";
  inputs."nimhdf5-v0_3_10".owner = "riinr";
  inputs."nimhdf5-v0_3_10".repo = "flake-nimble";
  inputs."nimhdf5-v0_3_10".ref = "flake-pinning";
  inputs."nimhdf5-v0_3_10".dir = "nimpkgs/n/nimhdf5/v0_3_10";
  inputs."nimhdf5-v0_3_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_3_11".type = "github";
  inputs."nimhdf5-v0_3_11".owner = "riinr";
  inputs."nimhdf5-v0_3_11".repo = "flake-nimble";
  inputs."nimhdf5-v0_3_11".ref = "flake-pinning";
  inputs."nimhdf5-v0_3_11".dir = "nimpkgs/n/nimhdf5/v0_3_11";
  inputs."nimhdf5-v0_3_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_3_12".type = "github";
  inputs."nimhdf5-v0_3_12".owner = "riinr";
  inputs."nimhdf5-v0_3_12".repo = "flake-nimble";
  inputs."nimhdf5-v0_3_12".ref = "flake-pinning";
  inputs."nimhdf5-v0_3_12".dir = "nimpkgs/n/nimhdf5/v0_3_12";
  inputs."nimhdf5-v0_3_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_3_13".type = "github";
  inputs."nimhdf5-v0_3_13".owner = "riinr";
  inputs."nimhdf5-v0_3_13".repo = "flake-nimble";
  inputs."nimhdf5-v0_3_13".ref = "flake-pinning";
  inputs."nimhdf5-v0_3_13".dir = "nimpkgs/n/nimhdf5/v0_3_13";
  inputs."nimhdf5-v0_3_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_3_14".type = "github";
  inputs."nimhdf5-v0_3_14".owner = "riinr";
  inputs."nimhdf5-v0_3_14".repo = "flake-nimble";
  inputs."nimhdf5-v0_3_14".ref = "flake-pinning";
  inputs."nimhdf5-v0_3_14".dir = "nimpkgs/n/nimhdf5/v0_3_14";
  inputs."nimhdf5-v0_3_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_3_15".type = "github";
  inputs."nimhdf5-v0_3_15".owner = "riinr";
  inputs."nimhdf5-v0_3_15".repo = "flake-nimble";
  inputs."nimhdf5-v0_3_15".ref = "flake-pinning";
  inputs."nimhdf5-v0_3_15".dir = "nimpkgs/n/nimhdf5/v0_3_15";
  inputs."nimhdf5-v0_3_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_3_2".type = "github";
  inputs."nimhdf5-v0_3_2".owner = "riinr";
  inputs."nimhdf5-v0_3_2".repo = "flake-nimble";
  inputs."nimhdf5-v0_3_2".ref = "flake-pinning";
  inputs."nimhdf5-v0_3_2".dir = "nimpkgs/n/nimhdf5/v0_3_2";
  inputs."nimhdf5-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_3_3".type = "github";
  inputs."nimhdf5-v0_3_3".owner = "riinr";
  inputs."nimhdf5-v0_3_3".repo = "flake-nimble";
  inputs."nimhdf5-v0_3_3".ref = "flake-pinning";
  inputs."nimhdf5-v0_3_3".dir = "nimpkgs/n/nimhdf5/v0_3_3";
  inputs."nimhdf5-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_3_4".type = "github";
  inputs."nimhdf5-v0_3_4".owner = "riinr";
  inputs."nimhdf5-v0_3_4".repo = "flake-nimble";
  inputs."nimhdf5-v0_3_4".ref = "flake-pinning";
  inputs."nimhdf5-v0_3_4".dir = "nimpkgs/n/nimhdf5/v0_3_4";
  inputs."nimhdf5-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_3_5".type = "github";
  inputs."nimhdf5-v0_3_5".owner = "riinr";
  inputs."nimhdf5-v0_3_5".repo = "flake-nimble";
  inputs."nimhdf5-v0_3_5".ref = "flake-pinning";
  inputs."nimhdf5-v0_3_5".dir = "nimpkgs/n/nimhdf5/v0_3_5";
  inputs."nimhdf5-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_3_8".type = "github";
  inputs."nimhdf5-v0_3_8".owner = "riinr";
  inputs."nimhdf5-v0_3_8".repo = "flake-nimble";
  inputs."nimhdf5-v0_3_8".ref = "flake-pinning";
  inputs."nimhdf5-v0_3_8".dir = "nimpkgs/n/nimhdf5/v0_3_8";
  inputs."nimhdf5-v0_3_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_3_9".type = "github";
  inputs."nimhdf5-v0_3_9".owner = "riinr";
  inputs."nimhdf5-v0_3_9".repo = "flake-nimble";
  inputs."nimhdf5-v0_3_9".ref = "flake-pinning";
  inputs."nimhdf5-v0_3_9".dir = "nimpkgs/n/nimhdf5/v0_3_9";
  inputs."nimhdf5-v0_3_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_4_0".type = "github";
  inputs."nimhdf5-v0_4_0".owner = "riinr";
  inputs."nimhdf5-v0_4_0".repo = "flake-nimble";
  inputs."nimhdf5-v0_4_0".ref = "flake-pinning";
  inputs."nimhdf5-v0_4_0".dir = "nimpkgs/n/nimhdf5/v0_4_0";
  inputs."nimhdf5-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_4_1".type = "github";
  inputs."nimhdf5-v0_4_1".owner = "riinr";
  inputs."nimhdf5-v0_4_1".repo = "flake-nimble";
  inputs."nimhdf5-v0_4_1".ref = "flake-pinning";
  inputs."nimhdf5-v0_4_1".dir = "nimpkgs/n/nimhdf5/v0_4_1";
  inputs."nimhdf5-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_4_2".type = "github";
  inputs."nimhdf5-v0_4_2".owner = "riinr";
  inputs."nimhdf5-v0_4_2".repo = "flake-nimble";
  inputs."nimhdf5-v0_4_2".ref = "flake-pinning";
  inputs."nimhdf5-v0_4_2".dir = "nimpkgs/n/nimhdf5/v0_4_2";
  inputs."nimhdf5-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_4_3".type = "github";
  inputs."nimhdf5-v0_4_3".owner = "riinr";
  inputs."nimhdf5-v0_4_3".repo = "flake-nimble";
  inputs."nimhdf5-v0_4_3".ref = "flake-pinning";
  inputs."nimhdf5-v0_4_3".dir = "nimpkgs/n/nimhdf5/v0_4_3";
  inputs."nimhdf5-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_4_4".type = "github";
  inputs."nimhdf5-v0_4_4".owner = "riinr";
  inputs."nimhdf5-v0_4_4".repo = "flake-nimble";
  inputs."nimhdf5-v0_4_4".ref = "flake-pinning";
  inputs."nimhdf5-v0_4_4".dir = "nimpkgs/n/nimhdf5/v0_4_4";
  inputs."nimhdf5-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimhdf5-v0_4_5".type = "github";
  inputs."nimhdf5-v0_4_5".owner = "riinr";
  inputs."nimhdf5-v0_4_5".repo = "flake-nimble";
  inputs."nimhdf5-v0_4_5".ref = "flake-pinning";
  inputs."nimhdf5-v0_4_5".dir = "nimpkgs/n/nimhdf5/v0_4_5";
  inputs."nimhdf5-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}