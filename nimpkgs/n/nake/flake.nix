{
  description = ''make-like for Nim. Describe your builds as tasks!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nake-master".type = "github";
  inputs."nake-master".owner = "riinr";
  inputs."nake-master".repo = "flake-nimble";
  inputs."nake-master".ref = "flake-pinning";
  inputs."nake-master".dir = "nimpkgs/n/nake/master";

    inputs."nake-1_9".type = "github";
  inputs."nake-1_9".owner = "riinr";
  inputs."nake-1_9".repo = "flake-nimble";
  inputs."nake-1_9".ref = "flake-pinning";
  inputs."nake-1_9".dir = "nimpkgs/n/nake/1_9";

    inputs."nake-1_9_1".type = "github";
  inputs."nake-1_9_1".owner = "riinr";
  inputs."nake-1_9_1".repo = "flake-nimble";
  inputs."nake-1_9_1".ref = "flake-pinning";
  inputs."nake-1_9_1".dir = "nimpkgs/n/nake/1_9_1";

    inputs."nake-1_9_2".type = "github";
  inputs."nake-1_9_2".owner = "riinr";
  inputs."nake-1_9_2".repo = "flake-nimble";
  inputs."nake-1_9_2".ref = "flake-pinning";
  inputs."nake-1_9_2".dir = "nimpkgs/n/nake/1_9_2";

    inputs."nake-1_9_3".type = "github";
  inputs."nake-1_9_3".owner = "riinr";
  inputs."nake-1_9_3".repo = "flake-nimble";
  inputs."nake-1_9_3".ref = "flake-pinning";
  inputs."nake-1_9_3".dir = "nimpkgs/n/nake/1_9_3";

    inputs."nake-1_9_4".type = "github";
  inputs."nake-1_9_4".owner = "riinr";
  inputs."nake-1_9_4".repo = "flake-nimble";
  inputs."nake-1_9_4".ref = "flake-pinning";
  inputs."nake-1_9_4".dir = "nimpkgs/n/nake/1_9_4";

    inputs."nake-v1_0".type = "github";
  inputs."nake-v1_0".owner = "riinr";
  inputs."nake-v1_0".repo = "flake-nimble";
  inputs."nake-v1_0".ref = "flake-pinning";
  inputs."nake-v1_0".dir = "nimpkgs/n/nake/v1_0";

    inputs."nake-v1_1".type = "github";
  inputs."nake-v1_1".owner = "riinr";
  inputs."nake-v1_1".repo = "flake-nimble";
  inputs."nake-v1_1".ref = "flake-pinning";
  inputs."nake-v1_1".dir = "nimpkgs/n/nake/v1_1";

    inputs."nake-v1_2".type = "github";
  inputs."nake-v1_2".owner = "riinr";
  inputs."nake-v1_2".repo = "flake-nimble";
  inputs."nake-v1_2".ref = "flake-pinning";
  inputs."nake-v1_2".dir = "nimpkgs/n/nake/v1_2";

    inputs."nake-v1_4".type = "github";
  inputs."nake-v1_4".owner = "riinr";
  inputs."nake-v1_4".repo = "flake-nimble";
  inputs."nake-v1_4".ref = "flake-pinning";
  inputs."nake-v1_4".dir = "nimpkgs/n/nake/v1_4";

    inputs."nake-v1_6".type = "github";
  inputs."nake-v1_6".owner = "riinr";
  inputs."nake-v1_6".repo = "flake-nimble";
  inputs."nake-v1_6".ref = "flake-pinning";
  inputs."nake-v1_6".dir = "nimpkgs/n/nake/v1_6";

    inputs."nake-v1_8".type = "github";
  inputs."nake-v1_8".owner = "riinr";
  inputs."nake-v1_8".repo = "flake-nimble";
  inputs."nake-v1_8".ref = "flake-pinning";
  inputs."nake-v1_8".dir = "nimpkgs/n/nake/v1_8";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}