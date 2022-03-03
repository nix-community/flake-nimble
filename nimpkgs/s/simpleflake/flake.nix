{
  description = ''Simpleflake for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."simpleflake-master".type = "github";
  inputs."simpleflake-master".owner = "riinr";
  inputs."simpleflake-master".repo = "flake-nimble";
  inputs."simpleflake-master".ref = "flake-pinning";
  inputs."simpleflake-master".dir = "nimpkgs/s/simpleflake/master";
  inputs."simpleflake-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleflake-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."simpleflake-v0_1_0".type = "github";
  inputs."simpleflake-v0_1_0".owner = "riinr";
  inputs."simpleflake-v0_1_0".repo = "flake-nimble";
  inputs."simpleflake-v0_1_0".ref = "flake-pinning";
  inputs."simpleflake-v0_1_0".dir = "nimpkgs/s/simpleflake/v0_1_0";
  inputs."simpleflake-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleflake-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."simpleflake-v0_1_1".type = "github";
  inputs."simpleflake-v0_1_1".owner = "riinr";
  inputs."simpleflake-v0_1_1".repo = "flake-nimble";
  inputs."simpleflake-v0_1_1".ref = "flake-pinning";
  inputs."simpleflake-v0_1_1".dir = "nimpkgs/s/simpleflake/v0_1_1";
  inputs."simpleflake-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleflake-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."simpleflake-v0_1_2".type = "github";
  inputs."simpleflake-v0_1_2".owner = "riinr";
  inputs."simpleflake-v0_1_2".repo = "flake-nimble";
  inputs."simpleflake-v0_1_2".ref = "flake-pinning";
  inputs."simpleflake-v0_1_2".dir = "nimpkgs/s/simpleflake/v0_1_2";
  inputs."simpleflake-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleflake-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}