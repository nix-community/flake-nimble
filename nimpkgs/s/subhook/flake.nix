{
  description = ''subhook wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."subhook-master".type = "github";
  inputs."subhook-master".owner = "riinr";
  inputs."subhook-master".repo = "flake-nimble";
  inputs."subhook-master".ref = "flake-pinning";
  inputs."subhook-master".dir = "nimpkgs/s/subhook/master";

    inputs."subhook-0_1_0".type = "github";
  inputs."subhook-0_1_0".owner = "riinr";
  inputs."subhook-0_1_0".repo = "flake-nimble";
  inputs."subhook-0_1_0".ref = "flake-pinning";
  inputs."subhook-0_1_0".dir = "nimpkgs/s/subhook/0_1_0";

    inputs."subhook-0_1_1".type = "github";
  inputs."subhook-0_1_1".owner = "riinr";
  inputs."subhook-0_1_1".repo = "flake-nimble";
  inputs."subhook-0_1_1".ref = "flake-pinning";
  inputs."subhook-0_1_1".dir = "nimpkgs/s/subhook/0_1_1";

    inputs."subhook-0_1_2".type = "github";
  inputs."subhook-0_1_2".owner = "riinr";
  inputs."subhook-0_1_2".repo = "flake-nimble";
  inputs."subhook-0_1_2".ref = "flake-pinning";
  inputs."subhook-0_1_2".dir = "nimpkgs/s/subhook/0_1_2";

    inputs."subhook-0_4_2_0".type = "github";
  inputs."subhook-0_4_2_0".owner = "riinr";
  inputs."subhook-0_4_2_0".repo = "flake-nimble";
  inputs."subhook-0_4_2_0".ref = "flake-pinning";
  inputs."subhook-0_4_2_0".dir = "nimpkgs/s/subhook/0_4_2_0";

    inputs."subhook-0_5_0".type = "github";
  inputs."subhook-0_5_0".owner = "riinr";
  inputs."subhook-0_5_0".repo = "flake-nimble";
  inputs."subhook-0_5_0".ref = "flake-pinning";
  inputs."subhook-0_5_0".dir = "nimpkgs/s/subhook/0_5_0";

    inputs."subhook-0_5_1".type = "github";
  inputs."subhook-0_5_1".owner = "riinr";
  inputs."subhook-0_5_1".repo = "flake-nimble";
  inputs."subhook-0_5_1".ref = "flake-pinning";
  inputs."subhook-0_5_1".dir = "nimpkgs/s/subhook/0_5_1";

    inputs."subhook-0_5_2".type = "github";
  inputs."subhook-0_5_2".owner = "riinr";
  inputs."subhook-0_5_2".repo = "flake-nimble";
  inputs."subhook-0_5_2".ref = "flake-pinning";
  inputs."subhook-0_5_2".dir = "nimpkgs/s/subhook/0_5_2";

    inputs."subhook-0_5_3".type = "github";
  inputs."subhook-0_5_3".owner = "riinr";
  inputs."subhook-0_5_3".repo = "flake-nimble";
  inputs."subhook-0_5_3".ref = "flake-pinning";
  inputs."subhook-0_5_3".dir = "nimpkgs/s/subhook/0_5_3";

    inputs."subhook-0_5_5".type = "github";
  inputs."subhook-0_5_5".owner = "riinr";
  inputs."subhook-0_5_5".repo = "flake-nimble";
  inputs."subhook-0_5_5".ref = "flake-pinning";
  inputs."subhook-0_5_5".dir = "nimpkgs/s/subhook/0_5_5";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}