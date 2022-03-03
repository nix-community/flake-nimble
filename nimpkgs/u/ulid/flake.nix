{
  description = ''Universally Unique Lexicographically Sortable Identifier'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ulid-master".type = "github";
  inputs."ulid-master".owner = "riinr";
  inputs."ulid-master".repo = "flake-nimble";
  inputs."ulid-master".ref = "flake-pinning";
  inputs."ulid-master".dir = "nimpkgs/u/ulid/master";
  inputs."ulid-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ulid-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ulid-v0_2_0".type = "github";
  inputs."ulid-v0_2_0".owner = "riinr";
  inputs."ulid-v0_2_0".repo = "flake-nimble";
  inputs."ulid-v0_2_0".ref = "flake-pinning";
  inputs."ulid-v0_2_0".dir = "nimpkgs/u/ulid/v0_2_0";
  inputs."ulid-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ulid-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ulid-v0_3_0".type = "github";
  inputs."ulid-v0_3_0".owner = "riinr";
  inputs."ulid-v0_3_0".repo = "flake-nimble";
  inputs."ulid-v0_3_0".ref = "flake-pinning";
  inputs."ulid-v0_3_0".dir = "nimpkgs/u/ulid/v0_3_0";
  inputs."ulid-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ulid-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}