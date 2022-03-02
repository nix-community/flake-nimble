{
  description = ''Loads environment variables from `.env`.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."dotenv-main".type = "github";
  inputs."dotenv-main".owner = "riinr";
  inputs."dotenv-main".repo = "flake-nimble";
  inputs."dotenv-main".ref = "flake-pinning";
  inputs."dotenv-main".dir = "nimpkgs/d/dotenv/main";
  inputs."dotenv-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dotenv-2_0_0".type = "github";
  inputs."dotenv-2_0_0".owner = "riinr";
  inputs."dotenv-2_0_0".repo = "flake-nimble";
  inputs."dotenv-2_0_0".ref = "flake-pinning";
  inputs."dotenv-2_0_0".dir = "nimpkgs/d/dotenv/2_0_0";
  inputs."dotenv-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dotenv-2_0_1".type = "github";
  inputs."dotenv-2_0_1".owner = "riinr";
  inputs."dotenv-2_0_1".repo = "flake-nimble";
  inputs."dotenv-2_0_1".ref = "flake-pinning";
  inputs."dotenv-2_0_1".dir = "nimpkgs/d/dotenv/2_0_1";
  inputs."dotenv-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dotenv-v1_0_0".type = "github";
  inputs."dotenv-v1_0_0".owner = "riinr";
  inputs."dotenv-v1_0_0".repo = "flake-nimble";
  inputs."dotenv-v1_0_0".ref = "flake-pinning";
  inputs."dotenv-v1_0_0".dir = "nimpkgs/d/dotenv/v1_0_0";
  inputs."dotenv-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dotenv-v1_0_3".type = "github";
  inputs."dotenv-v1_0_3".owner = "riinr";
  inputs."dotenv-v1_0_3".repo = "flake-nimble";
  inputs."dotenv-v1_0_3".ref = "flake-pinning";
  inputs."dotenv-v1_0_3".dir = "nimpkgs/d/dotenv/v1_0_3";
  inputs."dotenv-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dotenv-v1_0_4".type = "github";
  inputs."dotenv-v1_0_4".owner = "riinr";
  inputs."dotenv-v1_0_4".repo = "flake-nimble";
  inputs."dotenv-v1_0_4".ref = "flake-pinning";
  inputs."dotenv-v1_0_4".dir = "nimpkgs/d/dotenv/v1_0_4";
  inputs."dotenv-v1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv-v1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dotenv-v1_1_0".type = "github";
  inputs."dotenv-v1_1_0".owner = "riinr";
  inputs."dotenv-v1_1_0".repo = "flake-nimble";
  inputs."dotenv-v1_1_0".ref = "flake-pinning";
  inputs."dotenv-v1_1_0".dir = "nimpkgs/d/dotenv/v1_1_0";
  inputs."dotenv-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dotenv-v1_1_1".type = "github";
  inputs."dotenv-v1_1_1".owner = "riinr";
  inputs."dotenv-v1_1_1".repo = "flake-nimble";
  inputs."dotenv-v1_1_1".ref = "flake-pinning";
  inputs."dotenv-v1_1_1".dir = "nimpkgs/d/dotenv/v1_1_1";
  inputs."dotenv-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}