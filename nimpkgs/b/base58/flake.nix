{
  description = ''Base58 encoders and decoders for Bitcoin and CryptoNote addresses.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."base58-master".type = "github";
  inputs."base58-master".owner = "riinr";
  inputs."base58-master".repo = "flake-nimble";
  inputs."base58-master".ref = "flake-pinning";
  inputs."base58-master".dir = "nimpkgs/b/base58/master";
  inputs."base58-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."base58-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."base58-v0_1_0".type = "github";
  inputs."base58-v0_1_0".owner = "riinr";
  inputs."base58-v0_1_0".repo = "flake-nimble";
  inputs."base58-v0_1_0".ref = "flake-pinning";
  inputs."base58-v0_1_0".dir = "nimpkgs/b/base58/v0_1_0";
  inputs."base58-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."base58-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."base58-v0_1_1".type = "github";
  inputs."base58-v0_1_1".owner = "riinr";
  inputs."base58-v0_1_1".repo = "flake-nimble";
  inputs."base58-v0_1_1".ref = "flake-pinning";
  inputs."base58-v0_1_1".dir = "nimpkgs/b/base58/v0_1_1";
  inputs."base58-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."base58-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}