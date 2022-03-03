{
  description = ''Pure Nim asyncronous driver for Redis DB'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."asyncredis-master".type = "github";
  inputs."asyncredis-master".owner = "riinr";
  inputs."asyncredis-master".repo = "flake-nimble";
  inputs."asyncredis-master".ref = "flake-pinning";
  inputs."asyncredis-master".dir = "nimpkgs/a/asyncredis/master";
  inputs."asyncredis-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncredis-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."asyncredis-v0_8".type = "github";
  inputs."asyncredis-v0_8".owner = "riinr";
  inputs."asyncredis-v0_8".repo = "flake-nimble";
  inputs."asyncredis-v0_8".ref = "flake-pinning";
  inputs."asyncredis-v0_8".dir = "nimpkgs/a/asyncredis/v0_8";
  inputs."asyncredis-v0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncredis-v0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."asyncredis-v0_8_1".type = "github";
  inputs."asyncredis-v0_8_1".owner = "riinr";
  inputs."asyncredis-v0_8_1".repo = "flake-nimble";
  inputs."asyncredis-v0_8_1".ref = "flake-pinning";
  inputs."asyncredis-v0_8_1".dir = "nimpkgs/a/asyncredis/v0_8_1";
  inputs."asyncredis-v0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncredis-v0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."asyncredis-v0_8_2".type = "github";
  inputs."asyncredis-v0_8_2".owner = "riinr";
  inputs."asyncredis-v0_8_2".repo = "flake-nimble";
  inputs."asyncredis-v0_8_2".ref = "flake-pinning";
  inputs."asyncredis-v0_8_2".dir = "nimpkgs/a/asyncredis/v0_8_2";
  inputs."asyncredis-v0_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncredis-v0_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}