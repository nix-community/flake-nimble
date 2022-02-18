{
  description = ''SIMD-accelerated noise generation (Simplex, Perlin).'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."noisy-master".type = "github";
  inputs."noisy-master".owner = "riinr";
  inputs."noisy-master".repo = "flake-nimble";
  inputs."noisy-master".ref = "flake-pinning";
  inputs."noisy-master".dir = "nimpkgs/n/noisy/master";

    inputs."noisy-0_1_0".type = "github";
  inputs."noisy-0_1_0".owner = "riinr";
  inputs."noisy-0_1_0".repo = "flake-nimble";
  inputs."noisy-0_1_0".ref = "flake-pinning";
  inputs."noisy-0_1_0".dir = "nimpkgs/n/noisy/0_1_0";

    inputs."noisy-0_2_0".type = "github";
  inputs."noisy-0_2_0".owner = "riinr";
  inputs."noisy-0_2_0".repo = "flake-nimble";
  inputs."noisy-0_2_0".ref = "flake-pinning";
  inputs."noisy-0_2_0".dir = "nimpkgs/n/noisy/0_2_0";

    inputs."noisy-0_2_1".type = "github";
  inputs."noisy-0_2_1".owner = "riinr";
  inputs."noisy-0_2_1".repo = "flake-nimble";
  inputs."noisy-0_2_1".ref = "flake-pinning";
  inputs."noisy-0_2_1".dir = "nimpkgs/n/noisy/0_2_1";

    inputs."noisy-0_3_0".type = "github";
  inputs."noisy-0_3_0".owner = "riinr";
  inputs."noisy-0_3_0".repo = "flake-nimble";
  inputs."noisy-0_3_0".ref = "flake-pinning";
  inputs."noisy-0_3_0".dir = "nimpkgs/n/noisy/0_3_0";

    inputs."noisy-0_4_2".type = "github";
  inputs."noisy-0_4_2".owner = "riinr";
  inputs."noisy-0_4_2".repo = "flake-nimble";
  inputs."noisy-0_4_2".ref = "flake-pinning";
  inputs."noisy-0_4_2".dir = "nimpkgs/n/noisy/0_4_2";

    inputs."noisy-0_4_3".type = "github";
  inputs."noisy-0_4_3".owner = "riinr";
  inputs."noisy-0_4_3".repo = "flake-nimble";
  inputs."noisy-0_4_3".ref = "flake-pinning";
  inputs."noisy-0_4_3".dir = "nimpkgs/n/noisy/0_4_3";

    inputs."noisy-0_4_4".type = "github";
  inputs."noisy-0_4_4".owner = "riinr";
  inputs."noisy-0_4_4".repo = "flake-nimble";
  inputs."noisy-0_4_4".ref = "flake-pinning";
  inputs."noisy-0_4_4".dir = "nimpkgs/n/noisy/0_4_4";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}