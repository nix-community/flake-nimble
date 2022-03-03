{
  description = ''Cross-platform access to OS keychain'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."keyring-master".type = "github";
  inputs."keyring-master".owner = "riinr";
  inputs."keyring-master".repo = "flake-nimble";
  inputs."keyring-master".ref = "flake-pinning";
  inputs."keyring-master".dir = "nimpkgs/k/keyring/master";
  inputs."keyring-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."keyring-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."keyring-v0_1_0".type = "github";
  inputs."keyring-v0_1_0".owner = "riinr";
  inputs."keyring-v0_1_0".repo = "flake-nimble";
  inputs."keyring-v0_1_0".ref = "flake-pinning";
  inputs."keyring-v0_1_0".dir = "nimpkgs/k/keyring/v0_1_0";
  inputs."keyring-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."keyring-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."keyring-v0_1_1".type = "github";
  inputs."keyring-v0_1_1".owner = "riinr";
  inputs."keyring-v0_1_1".repo = "flake-nimble";
  inputs."keyring-v0_1_1".ref = "flake-pinning";
  inputs."keyring-v0_1_1".dir = "nimpkgs/k/keyring/v0_1_1";
  inputs."keyring-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."keyring-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."keyring-v0_2_0".type = "github";
  inputs."keyring-v0_2_0".owner = "riinr";
  inputs."keyring-v0_2_0".repo = "flake-nimble";
  inputs."keyring-v0_2_0".ref = "flake-pinning";
  inputs."keyring-v0_2_0".dir = "nimpkgs/k/keyring/v0_2_0";
  inputs."keyring-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."keyring-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."keyring-v0_2_1".type = "github";
  inputs."keyring-v0_2_1".owner = "riinr";
  inputs."keyring-v0_2_1".repo = "flake-nimble";
  inputs."keyring-v0_2_1".ref = "flake-pinning";
  inputs."keyring-v0_2_1".dir = "nimpkgs/k/keyring/v0_2_1";
  inputs."keyring-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."keyring-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."keyring-v0_2_2".type = "github";
  inputs."keyring-v0_2_2".owner = "riinr";
  inputs."keyring-v0_2_2".repo = "flake-nimble";
  inputs."keyring-v0_2_2".ref = "flake-pinning";
  inputs."keyring-v0_2_2".dir = "nimpkgs/k/keyring/v0_2_2";
  inputs."keyring-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."keyring-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."keyring-v0_3_0".type = "github";
  inputs."keyring-v0_3_0".owner = "riinr";
  inputs."keyring-v0_3_0".repo = "flake-nimble";
  inputs."keyring-v0_3_0".ref = "flake-pinning";
  inputs."keyring-v0_3_0".dir = "nimpkgs/k/keyring/v0_3_0";
  inputs."keyring-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."keyring-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}