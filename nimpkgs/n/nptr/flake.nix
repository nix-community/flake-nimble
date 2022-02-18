{
  description = ''Nim lang smart pointers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nptr-develop".type = "github";
  inputs."nptr-develop".owner = "riinr";
  inputs."nptr-develop".repo = "flake-nimble";
  inputs."nptr-develop".ref = "flake-pinning";
  inputs."nptr-develop".dir = "nimpkgs/n/nptr/develop";

    inputs."nptr-main".type = "github";
  inputs."nptr-main".owner = "riinr";
  inputs."nptr-main".repo = "flake-nimble";
  inputs."nptr-main".ref = "flake-pinning";
  inputs."nptr-main".dir = "nimpkgs/n/nptr/main";

    inputs."nptr-v0_1_0".type = "github";
  inputs."nptr-v0_1_0".owner = "riinr";
  inputs."nptr-v0_1_0".repo = "flake-nimble";
  inputs."nptr-v0_1_0".ref = "flake-pinning";
  inputs."nptr-v0_1_0".dir = "nimpkgs/n/nptr/v0_1_0";

    inputs."nptr-v0_1_1".type = "github";
  inputs."nptr-v0_1_1".owner = "riinr";
  inputs."nptr-v0_1_1".repo = "flake-nimble";
  inputs."nptr-v0_1_1".ref = "flake-pinning";
  inputs."nptr-v0_1_1".dir = "nimpkgs/n/nptr/v0_1_1";

    inputs."nptr-v0_1_10".type = "github";
  inputs."nptr-v0_1_10".owner = "riinr";
  inputs."nptr-v0_1_10".repo = "flake-nimble";
  inputs."nptr-v0_1_10".ref = "flake-pinning";
  inputs."nptr-v0_1_10".dir = "nimpkgs/n/nptr/v0_1_10";

    inputs."nptr-v0_1_2".type = "github";
  inputs."nptr-v0_1_2".owner = "riinr";
  inputs."nptr-v0_1_2".repo = "flake-nimble";
  inputs."nptr-v0_1_2".ref = "flake-pinning";
  inputs."nptr-v0_1_2".dir = "nimpkgs/n/nptr/v0_1_2";

    inputs."nptr-v0_1_3".type = "github";
  inputs."nptr-v0_1_3".owner = "riinr";
  inputs."nptr-v0_1_3".repo = "flake-nimble";
  inputs."nptr-v0_1_3".ref = "flake-pinning";
  inputs."nptr-v0_1_3".dir = "nimpkgs/n/nptr/v0_1_3";

    inputs."nptr-v0_1_4".type = "github";
  inputs."nptr-v0_1_4".owner = "riinr";
  inputs."nptr-v0_1_4".repo = "flake-nimble";
  inputs."nptr-v0_1_4".ref = "flake-pinning";
  inputs."nptr-v0_1_4".dir = "nimpkgs/n/nptr/v0_1_4";

    inputs."nptr-v0_1_5".type = "github";
  inputs."nptr-v0_1_5".owner = "riinr";
  inputs."nptr-v0_1_5".repo = "flake-nimble";
  inputs."nptr-v0_1_5".ref = "flake-pinning";
  inputs."nptr-v0_1_5".dir = "nimpkgs/n/nptr/v0_1_5";

    inputs."nptr-v0_1_6".type = "github";
  inputs."nptr-v0_1_6".owner = "riinr";
  inputs."nptr-v0_1_6".repo = "flake-nimble";
  inputs."nptr-v0_1_6".ref = "flake-pinning";
  inputs."nptr-v0_1_6".dir = "nimpkgs/n/nptr/v0_1_6";

    inputs."nptr-v0_1_7".type = "github";
  inputs."nptr-v0_1_7".owner = "riinr";
  inputs."nptr-v0_1_7".repo = "flake-nimble";
  inputs."nptr-v0_1_7".ref = "flake-pinning";
  inputs."nptr-v0_1_7".dir = "nimpkgs/n/nptr/v0_1_7";

    inputs."nptr-v0_1_8".type = "github";
  inputs."nptr-v0_1_8".owner = "riinr";
  inputs."nptr-v0_1_8".repo = "flake-nimble";
  inputs."nptr-v0_1_8".ref = "flake-pinning";
  inputs."nptr-v0_1_8".dir = "nimpkgs/n/nptr/v0_1_8";

    inputs."nptr-v0_1_9".type = "github";
  inputs."nptr-v0_1_9".owner = "riinr";
  inputs."nptr-v0_1_9".repo = "flake-nimble";
  inputs."nptr-v0_1_9".ref = "flake-pinning";
  inputs."nptr-v0_1_9".dir = "nimpkgs/n/nptr/v0_1_9";

    inputs."nptr-v0_2_0".type = "github";
  inputs."nptr-v0_2_0".owner = "riinr";
  inputs."nptr-v0_2_0".repo = "flake-nimble";
  inputs."nptr-v0_2_0".ref = "flake-pinning";
  inputs."nptr-v0_2_0".dir = "nimpkgs/n/nptr/v0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}