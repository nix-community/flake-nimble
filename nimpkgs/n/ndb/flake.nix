{
  description = ''A db_sqlite fork with a proper typing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."ndb-master".type = "github";
  inputs."ndb-master".owner = "riinr";
  inputs."ndb-master".repo = "flake-nimble";
  inputs."ndb-master".ref = "flake-pinning";
  inputs."ndb-master".dir = "nimpkgs/n/ndb/master";

    inputs."ndb-v0_19_0".type = "github";
  inputs."ndb-v0_19_0".owner = "riinr";
  inputs."ndb-v0_19_0".repo = "flake-nimble";
  inputs."ndb-v0_19_0".ref = "flake-pinning";
  inputs."ndb-v0_19_0".dir = "nimpkgs/n/ndb/v0_19_0";

    inputs."ndb-v0_19_1".type = "github";
  inputs."ndb-v0_19_1".owner = "riinr";
  inputs."ndb-v0_19_1".repo = "flake-nimble";
  inputs."ndb-v0_19_1".ref = "flake-pinning";
  inputs."ndb-v0_19_1".dir = "nimpkgs/n/ndb/v0_19_1";

    inputs."ndb-v0_19_2".type = "github";
  inputs."ndb-v0_19_2".owner = "riinr";
  inputs."ndb-v0_19_2".repo = "flake-nimble";
  inputs."ndb-v0_19_2".ref = "flake-pinning";
  inputs."ndb-v0_19_2".dir = "nimpkgs/n/ndb/v0_19_2";

    inputs."ndb-v0_19_3".type = "github";
  inputs."ndb-v0_19_3".owner = "riinr";
  inputs."ndb-v0_19_3".repo = "flake-nimble";
  inputs."ndb-v0_19_3".ref = "flake-pinning";
  inputs."ndb-v0_19_3".dir = "nimpkgs/n/ndb/v0_19_3";

    inputs."ndb-v0_19_4".type = "github";
  inputs."ndb-v0_19_4".owner = "riinr";
  inputs."ndb-v0_19_4".repo = "flake-nimble";
  inputs."ndb-v0_19_4".ref = "flake-pinning";
  inputs."ndb-v0_19_4".dir = "nimpkgs/n/ndb/v0_19_4";

    inputs."ndb-v0_19_5".type = "github";
  inputs."ndb-v0_19_5".owner = "riinr";
  inputs."ndb-v0_19_5".repo = "flake-nimble";
  inputs."ndb-v0_19_5".ref = "flake-pinning";
  inputs."ndb-v0_19_5".dir = "nimpkgs/n/ndb/v0_19_5";

    inputs."ndb-v0_19_6".type = "github";
  inputs."ndb-v0_19_6".owner = "riinr";
  inputs."ndb-v0_19_6".repo = "flake-nimble";
  inputs."ndb-v0_19_6".ref = "flake-pinning";
  inputs."ndb-v0_19_6".dir = "nimpkgs/n/ndb/v0_19_6";

    inputs."ndb-v0_19_7".type = "github";
  inputs."ndb-v0_19_7".owner = "riinr";
  inputs."ndb-v0_19_7".repo = "flake-nimble";
  inputs."ndb-v0_19_7".ref = "flake-pinning";
  inputs."ndb-v0_19_7".dir = "nimpkgs/n/ndb/v0_19_7";

    inputs."ndb-v0_19_8".type = "github";
  inputs."ndb-v0_19_8".owner = "riinr";
  inputs."ndb-v0_19_8".repo = "flake-nimble";
  inputs."ndb-v0_19_8".ref = "flake-pinning";
  inputs."ndb-v0_19_8".dir = "nimpkgs/n/ndb/v0_19_8";

    inputs."ndb-v0_19_9".type = "github";
  inputs."ndb-v0_19_9".owner = "riinr";
  inputs."ndb-v0_19_9".repo = "flake-nimble";
  inputs."ndb-v0_19_9".ref = "flake-pinning";
  inputs."ndb-v0_19_9".dir = "nimpkgs/n/ndb/v0_19_9";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}