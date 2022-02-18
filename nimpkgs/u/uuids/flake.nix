{
  description = ''UUID library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."uuids-master".type = "github";
  inputs."uuids-master".owner = "riinr";
  inputs."uuids-master".repo = "flake-nimble";
  inputs."uuids-master".ref = "flake-pinning";
  inputs."uuids-master".dir = "nimpkgs/u/uuids/master";

    inputs."uuids-v0_1_0".type = "github";
  inputs."uuids-v0_1_0".owner = "riinr";
  inputs."uuids-v0_1_0".repo = "flake-nimble";
  inputs."uuids-v0_1_0".ref = "flake-pinning";
  inputs."uuids-v0_1_0".dir = "nimpkgs/u/uuids/v0_1_0";

    inputs."uuids-v0_1_1".type = "github";
  inputs."uuids-v0_1_1".owner = "riinr";
  inputs."uuids-v0_1_1".repo = "flake-nimble";
  inputs."uuids-v0_1_1".ref = "flake-pinning";
  inputs."uuids-v0_1_1".dir = "nimpkgs/u/uuids/v0_1_1";

    inputs."uuids-v0_1_10".type = "github";
  inputs."uuids-v0_1_10".owner = "riinr";
  inputs."uuids-v0_1_10".repo = "flake-nimble";
  inputs."uuids-v0_1_10".ref = "flake-pinning";
  inputs."uuids-v0_1_10".dir = "nimpkgs/u/uuids/v0_1_10";

    inputs."uuids-v0_1_11".type = "github";
  inputs."uuids-v0_1_11".owner = "riinr";
  inputs."uuids-v0_1_11".repo = "flake-nimble";
  inputs."uuids-v0_1_11".ref = "flake-pinning";
  inputs."uuids-v0_1_11".dir = "nimpkgs/u/uuids/v0_1_11";

    inputs."uuids-v0_1_2".type = "github";
  inputs."uuids-v0_1_2".owner = "riinr";
  inputs."uuids-v0_1_2".repo = "flake-nimble";
  inputs."uuids-v0_1_2".ref = "flake-pinning";
  inputs."uuids-v0_1_2".dir = "nimpkgs/u/uuids/v0_1_2";

    inputs."uuids-v0_1_3".type = "github";
  inputs."uuids-v0_1_3".owner = "riinr";
  inputs."uuids-v0_1_3".repo = "flake-nimble";
  inputs."uuids-v0_1_3".ref = "flake-pinning";
  inputs."uuids-v0_1_3".dir = "nimpkgs/u/uuids/v0_1_3";

    inputs."uuids-v0_1_4".type = "github";
  inputs."uuids-v0_1_4".owner = "riinr";
  inputs."uuids-v0_1_4".repo = "flake-nimble";
  inputs."uuids-v0_1_4".ref = "flake-pinning";
  inputs."uuids-v0_1_4".dir = "nimpkgs/u/uuids/v0_1_4";

    inputs."uuids-v0_1_5".type = "github";
  inputs."uuids-v0_1_5".owner = "riinr";
  inputs."uuids-v0_1_5".repo = "flake-nimble";
  inputs."uuids-v0_1_5".ref = "flake-pinning";
  inputs."uuids-v0_1_5".dir = "nimpkgs/u/uuids/v0_1_5";

    inputs."uuids-v0_1_6".type = "github";
  inputs."uuids-v0_1_6".owner = "riinr";
  inputs."uuids-v0_1_6".repo = "flake-nimble";
  inputs."uuids-v0_1_6".ref = "flake-pinning";
  inputs."uuids-v0_1_6".dir = "nimpkgs/u/uuids/v0_1_6";

    inputs."uuids-v0_1_7".type = "github";
  inputs."uuids-v0_1_7".owner = "riinr";
  inputs."uuids-v0_1_7".repo = "flake-nimble";
  inputs."uuids-v0_1_7".ref = "flake-pinning";
  inputs."uuids-v0_1_7".dir = "nimpkgs/u/uuids/v0_1_7";

    inputs."uuids-v0_1_8".type = "github";
  inputs."uuids-v0_1_8".owner = "riinr";
  inputs."uuids-v0_1_8".repo = "flake-nimble";
  inputs."uuids-v0_1_8".ref = "flake-pinning";
  inputs."uuids-v0_1_8".dir = "nimpkgs/u/uuids/v0_1_8";

    inputs."uuids-v0_1_9".type = "github";
  inputs."uuids-v0_1_9".owner = "riinr";
  inputs."uuids-v0_1_9".repo = "flake-nimble";
  inputs."uuids-v0_1_9".ref = "flake-pinning";
  inputs."uuids-v0_1_9".dir = "nimpkgs/u/uuids/v0_1_9";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}