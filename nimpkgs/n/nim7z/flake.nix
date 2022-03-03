{
  description = ''7z extraction for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nim7z-master".type = "github";
  inputs."nim7z-master".owner = "riinr";
  inputs."nim7z-master".repo = "flake-nimble";
  inputs."nim7z-master".ref = "flake-pinning";
  inputs."nim7z-master".dir = "nimpkgs/n/nim7z/master";
  inputs."nim7z-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim7z-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nim7z-v0_1_1".type = "github";
  inputs."nim7z-v0_1_1".owner = "riinr";
  inputs."nim7z-v0_1_1".repo = "flake-nimble";
  inputs."nim7z-v0_1_1".ref = "flake-pinning";
  inputs."nim7z-v0_1_1".dir = "nimpkgs/n/nim7z/v0_1_1";
  inputs."nim7z-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim7z-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nim7z-v0_1_2".type = "github";
  inputs."nim7z-v0_1_2".owner = "riinr";
  inputs."nim7z-v0_1_2".repo = "flake-nimble";
  inputs."nim7z-v0_1_2".ref = "flake-pinning";
  inputs."nim7z-v0_1_2".dir = "nimpkgs/n/nim7z/v0_1_2";
  inputs."nim7z-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim7z-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nim7z-v0_1_3".type = "github";
  inputs."nim7z-v0_1_3".owner = "riinr";
  inputs."nim7z-v0_1_3".repo = "flake-nimble";
  inputs."nim7z-v0_1_3".ref = "flake-pinning";
  inputs."nim7z-v0_1_3".dir = "nimpkgs/n/nim7z/v0_1_3";
  inputs."nim7z-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim7z-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nim7z-v0_1_4".type = "github";
  inputs."nim7z-v0_1_4".owner = "riinr";
  inputs."nim7z-v0_1_4".repo = "flake-nimble";
  inputs."nim7z-v0_1_4".ref = "flake-pinning";
  inputs."nim7z-v0_1_4".dir = "nimpkgs/n/nim7z/v0_1_4";
  inputs."nim7z-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim7z-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nim7z-v0_1_5".type = "github";
  inputs."nim7z-v0_1_5".owner = "riinr";
  inputs."nim7z-v0_1_5".repo = "flake-nimble";
  inputs."nim7z-v0_1_5".ref = "flake-pinning";
  inputs."nim7z-v0_1_5".dir = "nimpkgs/n/nim7z/v0_1_5";
  inputs."nim7z-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim7z-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}