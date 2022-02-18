{
  description = ''A thin SQLite wrapper with proper type safety'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."tiny_sqlite-master".type = "github";
  inputs."tiny_sqlite-master".owner = "riinr";
  inputs."tiny_sqlite-master".repo = "flake-nimble";
  inputs."tiny_sqlite-master".ref = "flake-pinning";
  inputs."tiny_sqlite-master".dir = "nimpkgs/t/tiny_sqlite/master";

    inputs."tiny_sqlite-v0_1_1".type = "github";
  inputs."tiny_sqlite-v0_1_1".owner = "riinr";
  inputs."tiny_sqlite-v0_1_1".repo = "flake-nimble";
  inputs."tiny_sqlite-v0_1_1".ref = "flake-pinning";
  inputs."tiny_sqlite-v0_1_1".dir = "nimpkgs/t/tiny_sqlite/v0_1_1";

    inputs."tiny_sqlite-v0_1_2".type = "github";
  inputs."tiny_sqlite-v0_1_2".owner = "riinr";
  inputs."tiny_sqlite-v0_1_2".repo = "flake-nimble";
  inputs."tiny_sqlite-v0_1_2".ref = "flake-pinning";
  inputs."tiny_sqlite-v0_1_2".dir = "nimpkgs/t/tiny_sqlite/v0_1_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}