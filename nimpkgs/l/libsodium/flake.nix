{
  description = ''libsodium wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."libsodium-master".type = "github";
  inputs."libsodium-master".owner = "riinr";
  inputs."libsodium-master".repo = "flake-nimble";
  inputs."libsodium-master".ref = "flake-pinning";
  inputs."libsodium-master".dir = "nimpkgs/l/libsodium/master";

    inputs."libsodium-0_2_2".type = "github";
  inputs."libsodium-0_2_2".owner = "riinr";
  inputs."libsodium-0_2_2".repo = "flake-nimble";
  inputs."libsodium-0_2_2".ref = "flake-pinning";
  inputs."libsodium-0_2_2".dir = "nimpkgs/l/libsodium/0_2_2";

    inputs."libsodium-0_3_0".type = "github";
  inputs."libsodium-0_3_0".owner = "riinr";
  inputs."libsodium-0_3_0".repo = "flake-nimble";
  inputs."libsodium-0_3_0".ref = "flake-pinning";
  inputs."libsodium-0_3_0".dir = "nimpkgs/l/libsodium/0_3_0";

    inputs."libsodium-0_4_0".type = "github";
  inputs."libsodium-0_4_0".owner = "riinr";
  inputs."libsodium-0_4_0".repo = "flake-nimble";
  inputs."libsodium-0_4_0".ref = "flake-pinning";
  inputs."libsodium-0_4_0".dir = "nimpkgs/l/libsodium/0_4_0";

    inputs."libsodium-0_4_1".type = "github";
  inputs."libsodium-0_4_1".owner = "riinr";
  inputs."libsodium-0_4_1".repo = "flake-nimble";
  inputs."libsodium-0_4_1".ref = "flake-pinning";
  inputs."libsodium-0_4_1".dir = "nimpkgs/l/libsodium/0_4_1";

    inputs."libsodium-0_4_2".type = "github";
  inputs."libsodium-0_4_2".owner = "riinr";
  inputs."libsodium-0_4_2".repo = "flake-nimble";
  inputs."libsodium-0_4_2".ref = "flake-pinning";
  inputs."libsodium-0_4_2".dir = "nimpkgs/l/libsodium/0_4_2";

    inputs."libsodium-0_5_0".type = "github";
  inputs."libsodium-0_5_0".owner = "riinr";
  inputs."libsodium-0_5_0".repo = "flake-nimble";
  inputs."libsodium-0_5_0".ref = "flake-pinning";
  inputs."libsodium-0_5_0".dir = "nimpkgs/l/libsodium/0_5_0";

    inputs."libsodium-0_6_0".type = "github";
  inputs."libsodium-0_6_0".owner = "riinr";
  inputs."libsodium-0_6_0".repo = "flake-nimble";
  inputs."libsodium-0_6_0".ref = "flake-pinning";
  inputs."libsodium-0_6_0".dir = "nimpkgs/l/libsodium/0_6_0";

    inputs."libsodium-0_7_0".type = "github";
  inputs."libsodium-0_7_0".owner = "riinr";
  inputs."libsodium-0_7_0".repo = "flake-nimble";
  inputs."libsodium-0_7_0".ref = "flake-pinning";
  inputs."libsodium-0_7_0".dir = "nimpkgs/l/libsodium/0_7_0";

    inputs."libsodium-0_7_1".type = "github";
  inputs."libsodium-0_7_1".owner = "riinr";
  inputs."libsodium-0_7_1".repo = "flake-nimble";
  inputs."libsodium-0_7_1".ref = "flake-pinning";
  inputs."libsodium-0_7_1".dir = "nimpkgs/l/libsodium/0_7_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}