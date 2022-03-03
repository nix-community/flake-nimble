{
  description = ''Selectors extension.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ioselectors-master".type = "github";
  inputs."ioselectors-master".owner = "riinr";
  inputs."ioselectors-master".repo = "flake-nimble";
  inputs."ioselectors-master".ref = "flake-pinning";
  inputs."ioselectors-master".dir = "nimpkgs/i/ioselectors/master";
  inputs."ioselectors-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ioselectors-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ioselectors-v0_1_0".type = "github";
  inputs."ioselectors-v0_1_0".owner = "riinr";
  inputs."ioselectors-v0_1_0".repo = "flake-nimble";
  inputs."ioselectors-v0_1_0".ref = "flake-pinning";
  inputs."ioselectors-v0_1_0".dir = "nimpkgs/i/ioselectors/v0_1_0";
  inputs."ioselectors-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ioselectors-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ioselectors-v0_1_2".type = "github";
  inputs."ioselectors-v0_1_2".owner = "riinr";
  inputs."ioselectors-v0_1_2".repo = "flake-nimble";
  inputs."ioselectors-v0_1_2".ref = "flake-pinning";
  inputs."ioselectors-v0_1_2".dir = "nimpkgs/i/ioselectors/v0_1_2";
  inputs."ioselectors-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ioselectors-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ioselectors-v0_1_4".type = "github";
  inputs."ioselectors-v0_1_4".owner = "riinr";
  inputs."ioselectors-v0_1_4".repo = "flake-nimble";
  inputs."ioselectors-v0_1_4".ref = "flake-pinning";
  inputs."ioselectors-v0_1_4".dir = "nimpkgs/i/ioselectors/v0_1_4";
  inputs."ioselectors-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ioselectors-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ioselectors-v0_1_6".type = "github";
  inputs."ioselectors-v0_1_6".owner = "riinr";
  inputs."ioselectors-v0_1_6".repo = "flake-nimble";
  inputs."ioselectors-v0_1_6".ref = "flake-pinning";
  inputs."ioselectors-v0_1_6".dir = "nimpkgs/i/ioselectors/v0_1_6";
  inputs."ioselectors-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ioselectors-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ioselectors-v0_1_8".type = "github";
  inputs."ioselectors-v0_1_8".owner = "riinr";
  inputs."ioselectors-v0_1_8".repo = "flake-nimble";
  inputs."ioselectors-v0_1_8".ref = "flake-pinning";
  inputs."ioselectors-v0_1_8".dir = "nimpkgs/i/ioselectors/v0_1_8";
  inputs."ioselectors-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ioselectors-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}