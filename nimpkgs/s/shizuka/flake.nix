{
  description = ''The Nim framework for VK API.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."shizuka-master".type = "github";
  inputs."shizuka-master".owner = "riinr";
  inputs."shizuka-master".repo = "flake-nimble";
  inputs."shizuka-master".ref = "flake-pinning";
  inputs."shizuka-master".dir = "nimpkgs/s/shizuka/master";
  inputs."shizuka-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shizuka-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shizuka-nightly-0_3_0".type = "github";
  inputs."shizuka-nightly-0_3_0".owner = "riinr";
  inputs."shizuka-nightly-0_3_0".repo = "flake-nimble";
  inputs."shizuka-nightly-0_3_0".ref = "flake-pinning";
  inputs."shizuka-nightly-0_3_0".dir = "nimpkgs/s/shizuka/nightly-0_3_0";
  inputs."shizuka-nightly-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shizuka-nightly-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shizuka-stable-1_0_0".type = "github";
  inputs."shizuka-stable-1_0_0".owner = "riinr";
  inputs."shizuka-stable-1_0_0".repo = "flake-nimble";
  inputs."shizuka-stable-1_0_0".ref = "flake-pinning";
  inputs."shizuka-stable-1_0_0".dir = "nimpkgs/s/shizuka/stable-1_0_0";
  inputs."shizuka-stable-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shizuka-stable-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shizuka-v0_2_1".type = "github";
  inputs."shizuka-v0_2_1".owner = "riinr";
  inputs."shizuka-v0_2_1".repo = "flake-nimble";
  inputs."shizuka-v0_2_1".ref = "flake-pinning";
  inputs."shizuka-v0_2_1".dir = "nimpkgs/s/shizuka/v0_2_1";
  inputs."shizuka-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shizuka-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shizuka-v0_2_2".type = "github";
  inputs."shizuka-v0_2_2".owner = "riinr";
  inputs."shizuka-v0_2_2".repo = "flake-nimble";
  inputs."shizuka-v0_2_2".ref = "flake-pinning";
  inputs."shizuka-v0_2_2".dir = "nimpkgs/s/shizuka/v0_2_2";
  inputs."shizuka-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shizuka-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}