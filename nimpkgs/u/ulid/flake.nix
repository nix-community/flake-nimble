{
  description = ''Universally Unique Lexicographically Sortable Identifier'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."ulid-master".type = "github";
  inputs."ulid-master".owner = "riinr";
  inputs."ulid-master".repo = "flake-nimble";
  inputs."ulid-master".ref = "flake-pinning";
  inputs."ulid-master".dir = "nimpkgs/u/ulid/master";

    inputs."ulid-v0_2_0".type = "github";
  inputs."ulid-v0_2_0".owner = "riinr";
  inputs."ulid-v0_2_0".repo = "flake-nimble";
  inputs."ulid-v0_2_0".ref = "flake-pinning";
  inputs."ulid-v0_2_0".dir = "nimpkgs/u/ulid/v0_2_0";

    inputs."ulid-v0_3_0".type = "github";
  inputs."ulid-v0_3_0".owner = "riinr";
  inputs."ulid-v0_3_0".repo = "flake-nimble";
  inputs."ulid-v0_3_0".ref = "flake-pinning";
  inputs."ulid-v0_3_0".dir = "nimpkgs/u/ulid/v0_3_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}