{
  description = ''Application to detect which commit generates malicious code detection by antivirus software.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."mcd-develop".type = "github";
  inputs."mcd-develop".owner = "riinr";
  inputs."mcd-develop".repo = "flake-nimble";
  inputs."mcd-develop".ref = "flake-pinning";
  inputs."mcd-develop".dir = "nimpkgs/m/mcd/develop";

    inputs."mcd-master".type = "github";
  inputs."mcd-master".owner = "riinr";
  inputs."mcd-master".repo = "flake-nimble";
  inputs."mcd-master".ref = "flake-pinning";
  inputs."mcd-master".dir = "nimpkgs/m/mcd/master";

    inputs."mcd-0_1_0".type = "github";
  inputs."mcd-0_1_0".owner = "riinr";
  inputs."mcd-0_1_0".repo = "flake-nimble";
  inputs."mcd-0_1_0".ref = "flake-pinning";
  inputs."mcd-0_1_0".dir = "nimpkgs/m/mcd/0_1_0";

    inputs."mcd-0_2_0".type = "github";
  inputs."mcd-0_2_0".owner = "riinr";
  inputs."mcd-0_2_0".repo = "flake-nimble";
  inputs."mcd-0_2_0".ref = "flake-pinning";
  inputs."mcd-0_2_0".dir = "nimpkgs/m/mcd/0_2_0";

    inputs."mcd-0_3_0".type = "github";
  inputs."mcd-0_3_0".owner = "riinr";
  inputs."mcd-0_3_0".repo = "flake-nimble";
  inputs."mcd-0_3_0".ref = "flake-pinning";
  inputs."mcd-0_3_0".dir = "nimpkgs/m/mcd/0_3_0";

    inputs."mcd-0_3_1".type = "github";
  inputs."mcd-0_3_1".owner = "riinr";
  inputs."mcd-0_3_1".repo = "flake-nimble";
  inputs."mcd-0_3_1".ref = "flake-pinning";
  inputs."mcd-0_3_1".dir = "nimpkgs/m/mcd/0_3_1";

    inputs."mcd-0_3_2".type = "github";
  inputs."mcd-0_3_2".owner = "riinr";
  inputs."mcd-0_3_2".repo = "flake-nimble";
  inputs."mcd-0_3_2".ref = "flake-pinning";
  inputs."mcd-0_3_2".dir = "nimpkgs/m/mcd/0_3_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}