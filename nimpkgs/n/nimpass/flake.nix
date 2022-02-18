{
  description = ''quickly generate cryptographically secure passwords and phrases'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimpass-master".type = "github";
  inputs."nimpass-master".owner = "riinr";
  inputs."nimpass-master".repo = "flake-nimble";
  inputs."nimpass-master".ref = "flake-pinning";
  inputs."nimpass-master".dir = "nimpkgs/n/nimpass/master";

    inputs."nimpass-v0_0_1".type = "github";
  inputs."nimpass-v0_0_1".owner = "riinr";
  inputs."nimpass-v0_0_1".repo = "flake-nimble";
  inputs."nimpass-v0_0_1".ref = "flake-pinning";
  inputs."nimpass-v0_0_1".dir = "nimpkgs/n/nimpass/v0_0_1";

    inputs."nimpass-v0_0_2".type = "github";
  inputs."nimpass-v0_0_2".owner = "riinr";
  inputs."nimpass-v0_0_2".repo = "flake-nimble";
  inputs."nimpass-v0_0_2".ref = "flake-pinning";
  inputs."nimpass-v0_0_2".dir = "nimpkgs/n/nimpass/v0_0_2";

    inputs."nimpass-v0_0_3".type = "github";
  inputs."nimpass-v0_0_3".owner = "riinr";
  inputs."nimpass-v0_0_3".repo = "flake-nimble";
  inputs."nimpass-v0_0_3".ref = "flake-pinning";
  inputs."nimpass-v0_0_3".dir = "nimpkgs/n/nimpass/v0_0_3";

    inputs."nimpass-v0_0_4".type = "github";
  inputs."nimpass-v0_0_4".owner = "riinr";
  inputs."nimpass-v0_0_4".repo = "flake-nimble";
  inputs."nimpass-v0_0_4".ref = "flake-pinning";
  inputs."nimpass-v0_0_4".dir = "nimpkgs/n/nimpass/v0_0_4";

    inputs."nimpass-v0_0_5".type = "github";
  inputs."nimpass-v0_0_5".owner = "riinr";
  inputs."nimpass-v0_0_5".repo = "flake-nimble";
  inputs."nimpass-v0_0_5".ref = "flake-pinning";
  inputs."nimpass-v0_0_5".dir = "nimpkgs/n/nimpass/v0_0_5";

    inputs."nimpass-v0_0_6".type = "github";
  inputs."nimpass-v0_0_6".owner = "riinr";
  inputs."nimpass-v0_0_6".repo = "flake-nimble";
  inputs."nimpass-v0_0_6".ref = "flake-pinning";
  inputs."nimpass-v0_0_6".dir = "nimpkgs/n/nimpass/v0_0_6";

    inputs."nimpass-v0_0_7".type = "github";
  inputs."nimpass-v0_0_7".owner = "riinr";
  inputs."nimpass-v0_0_7".repo = "flake-nimble";
  inputs."nimpass-v0_0_7".ref = "flake-pinning";
  inputs."nimpass-v0_0_7".dir = "nimpkgs/n/nimpass/v0_0_7";

    inputs."nimpass-v0_0_8".type = "github";
  inputs."nimpass-v0_0_8".owner = "riinr";
  inputs."nimpass-v0_0_8".repo = "flake-nimble";
  inputs."nimpass-v0_0_8".ref = "flake-pinning";
  inputs."nimpass-v0_0_8".dir = "nimpkgs/n/nimpass/v0_0_8";

    inputs."nimpass-v0_0_9".type = "github";
  inputs."nimpass-v0_0_9".owner = "riinr";
  inputs."nimpass-v0_0_9".repo = "flake-nimble";
  inputs."nimpass-v0_0_9".ref = "flake-pinning";
  inputs."nimpass-v0_0_9".dir = "nimpkgs/n/nimpass/v0_0_9";

    inputs."nimpass-v0_1_0".type = "github";
  inputs."nimpass-v0_1_0".owner = "riinr";
  inputs."nimpass-v0_1_0".repo = "flake-nimble";
  inputs."nimpass-v0_1_0".ref = "flake-pinning";
  inputs."nimpass-v0_1_0".dir = "nimpkgs/n/nimpass/v0_1_0";

    inputs."nimpass-v0_1_1".type = "github";
  inputs."nimpass-v0_1_1".owner = "riinr";
  inputs."nimpass-v0_1_1".repo = "flake-nimble";
  inputs."nimpass-v0_1_1".ref = "flake-pinning";
  inputs."nimpass-v0_1_1".dir = "nimpkgs/n/nimpass/v0_1_1";

    inputs."nimpass-v0_2_0".type = "github";
  inputs."nimpass-v0_2_0".owner = "riinr";
  inputs."nimpass-v0_2_0".repo = "flake-nimble";
  inputs."nimpass-v0_2_0".ref = "flake-pinning";
  inputs."nimpass-v0_2_0".dir = "nimpkgs/n/nimpass/v0_2_0";

    inputs."nimpass-v1_2_1".type = "github";
  inputs."nimpass-v1_2_1".owner = "riinr";
  inputs."nimpass-v1_2_1".repo = "flake-nimble";
  inputs."nimpass-v1_2_1".ref = "flake-pinning";
  inputs."nimpass-v1_2_1".dir = "nimpkgs/n/nimpass/v1_2_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}