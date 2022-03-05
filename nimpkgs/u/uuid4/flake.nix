{
  description = ''UUIDs in pure Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."uuid4-main".type = "github";
  inputs."uuid4-main".owner = "riinr";
  inputs."uuid4-main".repo = "flake-nimble";
  inputs."uuid4-main".ref = "flake-pinning";
  inputs."uuid4-main".dir = "nimpkgs/u/uuid4/main";
  inputs."uuid4-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuid4-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."uuid4-v0_9_0".type = "github";
  inputs."uuid4-v0_9_0".owner = "riinr";
  inputs."uuid4-v0_9_0".repo = "flake-nimble";
  inputs."uuid4-v0_9_0".ref = "flake-pinning";
  inputs."uuid4-v0_9_0".dir = "nimpkgs/u/uuid4/v0_9_0";
  inputs."uuid4-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuid4-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."uuid4-v0_9_1".type = "github";
  inputs."uuid4-v0_9_1".owner = "riinr";
  inputs."uuid4-v0_9_1".repo = "flake-nimble";
  inputs."uuid4-v0_9_1".ref = "flake-pinning";
  inputs."uuid4-v0_9_1".dir = "nimpkgs/u/uuid4/v0_9_1";
  inputs."uuid4-v0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuid4-v0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."uuid4-v0_9_2".type = "github";
  inputs."uuid4-v0_9_2".owner = "riinr";
  inputs."uuid4-v0_9_2".repo = "flake-nimble";
  inputs."uuid4-v0_9_2".ref = "flake-pinning";
  inputs."uuid4-v0_9_2".dir = "nimpkgs/u/uuid4/v0_9_2";
  inputs."uuid4-v0_9_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuid4-v0_9_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."uuid4-v0_9_3".type = "github";
  inputs."uuid4-v0_9_3".owner = "riinr";
  inputs."uuid4-v0_9_3".repo = "flake-nimble";
  inputs."uuid4-v0_9_3".ref = "flake-pinning";
  inputs."uuid4-v0_9_3".dir = "nimpkgs/u/uuid4/v0_9_3";
  inputs."uuid4-v0_9_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuid4-v0_9_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}