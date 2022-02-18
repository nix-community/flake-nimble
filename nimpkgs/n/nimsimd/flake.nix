{
  description = ''Pleasant Nim bindings for SIMD instruction sets'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimsimd-master".type = "github";
  inputs."nimsimd-master".owner = "riinr";
  inputs."nimsimd-master".repo = "flake-nimble";
  inputs."nimsimd-master".ref = "flake-pinning";
  inputs."nimsimd-master".dir = "nimpkgs/n/nimsimd/master";

    inputs."nimsimd-0_4_0".type = "github";
  inputs."nimsimd-0_4_0".owner = "riinr";
  inputs."nimsimd-0_4_0".repo = "flake-nimble";
  inputs."nimsimd-0_4_0".ref = "flake-pinning";
  inputs."nimsimd-0_4_0".dir = "nimpkgs/n/nimsimd/0_4_0";

    inputs."nimsimd-0_4_1".type = "github";
  inputs."nimsimd-0_4_1".owner = "riinr";
  inputs."nimsimd-0_4_1".repo = "flake-nimble";
  inputs."nimsimd-0_4_1".ref = "flake-pinning";
  inputs."nimsimd-0_4_1".dir = "nimpkgs/n/nimsimd/0_4_1";

    inputs."nimsimd-0_4_2".type = "github";
  inputs."nimsimd-0_4_2".owner = "riinr";
  inputs."nimsimd-0_4_2".repo = "flake-nimble";
  inputs."nimsimd-0_4_2".ref = "flake-pinning";
  inputs."nimsimd-0_4_2".dir = "nimpkgs/n/nimsimd/0_4_2";

    inputs."nimsimd-0_4_3".type = "github";
  inputs."nimsimd-0_4_3".owner = "riinr";
  inputs."nimsimd-0_4_3".repo = "flake-nimble";
  inputs."nimsimd-0_4_3".ref = "flake-pinning";
  inputs."nimsimd-0_4_3".dir = "nimpkgs/n/nimsimd/0_4_3";

    inputs."nimsimd-0_4_4".type = "github";
  inputs."nimsimd-0_4_4".owner = "riinr";
  inputs."nimsimd-0_4_4".repo = "flake-nimble";
  inputs."nimsimd-0_4_4".ref = "flake-pinning";
  inputs."nimsimd-0_4_4".dir = "nimpkgs/n/nimsimd/0_4_4";

    inputs."nimsimd-0_4_5".type = "github";
  inputs."nimsimd-0_4_5".owner = "riinr";
  inputs."nimsimd-0_4_5".repo = "flake-nimble";
  inputs."nimsimd-0_4_5".ref = "flake-pinning";
  inputs."nimsimd-0_4_5".dir = "nimpkgs/n/nimsimd/0_4_5";

    inputs."nimsimd-0_4_6".type = "github";
  inputs."nimsimd-0_4_6".owner = "riinr";
  inputs."nimsimd-0_4_6".repo = "flake-nimble";
  inputs."nimsimd-0_4_6".ref = "flake-pinning";
  inputs."nimsimd-0_4_6".dir = "nimpkgs/n/nimsimd/0_4_6";

    inputs."nimsimd-0_4_7".type = "github";
  inputs."nimsimd-0_4_7".owner = "riinr";
  inputs."nimsimd-0_4_7".repo = "flake-nimble";
  inputs."nimsimd-0_4_7".ref = "flake-pinning";
  inputs."nimsimd-0_4_7".dir = "nimpkgs/n/nimsimd/0_4_7";

    inputs."nimsimd-0_4_8".type = "github";
  inputs."nimsimd-0_4_8".owner = "riinr";
  inputs."nimsimd-0_4_8".repo = "flake-nimble";
  inputs."nimsimd-0_4_8".ref = "flake-pinning";
  inputs."nimsimd-0_4_8".dir = "nimpkgs/n/nimsimd/0_4_8";

    inputs."nimsimd-0_4_9".type = "github";
  inputs."nimsimd-0_4_9".owner = "riinr";
  inputs."nimsimd-0_4_9".repo = "flake-nimble";
  inputs."nimsimd-0_4_9".ref = "flake-pinning";
  inputs."nimsimd-0_4_9".dir = "nimpkgs/n/nimsimd/0_4_9";

    inputs."nimsimd-1_0_0".type = "github";
  inputs."nimsimd-1_0_0".owner = "riinr";
  inputs."nimsimd-1_0_0".repo = "flake-nimble";
  inputs."nimsimd-1_0_0".ref = "flake-pinning";
  inputs."nimsimd-1_0_0".dir = "nimpkgs/n/nimsimd/1_0_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}