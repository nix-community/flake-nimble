{
  description = ''The International Standard for country codes and codes for their subdivisions on Nim (ISO-3166)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."iridium-master".type = "github";
  inputs."iridium-master".owner = "riinr";
  inputs."iridium-master".repo = "flake-nimble";
  inputs."iridium-master".ref = "flake-pinning";
  inputs."iridium-master".dir = "nimpkgs/i/iridium/master";
  inputs."iridium-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."iridium-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."iridium-v0_1_0".type = "github";
  inputs."iridium-v0_1_0".owner = "riinr";
  inputs."iridium-v0_1_0".repo = "flake-nimble";
  inputs."iridium-v0_1_0".ref = "flake-pinning";
  inputs."iridium-v0_1_0".dir = "nimpkgs/i/iridium/v0_1_0";
  inputs."iridium-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."iridium-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."iridium-v0_2_0".type = "github";
  inputs."iridium-v0_2_0".owner = "riinr";
  inputs."iridium-v0_2_0".repo = "flake-nimble";
  inputs."iridium-v0_2_0".ref = "flake-pinning";
  inputs."iridium-v0_2_0".dir = "nimpkgs/i/iridium/v0_2_0";
  inputs."iridium-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."iridium-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."iridium-v0_3_0".type = "github";
  inputs."iridium-v0_3_0".owner = "riinr";
  inputs."iridium-v0_3_0".repo = "flake-nimble";
  inputs."iridium-v0_3_0".ref = "flake-pinning";
  inputs."iridium-v0_3_0".dir = "nimpkgs/i/iridium/v0_3_0";
  inputs."iridium-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."iridium-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."iridium-v0_3_1".type = "github";
  inputs."iridium-v0_3_1".owner = "riinr";
  inputs."iridium-v0_3_1".repo = "flake-nimble";
  inputs."iridium-v0_3_1".ref = "flake-pinning";
  inputs."iridium-v0_3_1".dir = "nimpkgs/i/iridium/v0_3_1";
  inputs."iridium-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."iridium-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."iridium-v0_3_2".type = "github";
  inputs."iridium-v0_3_2".owner = "riinr";
  inputs."iridium-v0_3_2".repo = "flake-nimble";
  inputs."iridium-v0_3_2".ref = "flake-pinning";
  inputs."iridium-v0_3_2".dir = "nimpkgs/i/iridium/v0_3_2";
  inputs."iridium-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."iridium-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}