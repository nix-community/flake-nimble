{
  description = ''WebDriver for Selenium(selenium-hub).'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."selenimum-main".type = "github";
  inputs."selenimum-main".owner = "riinr";
  inputs."selenimum-main".repo = "flake-nimble";
  inputs."selenimum-main".ref = "flake-pinning";
  inputs."selenimum-main".dir = "nimpkgs/s/selenimum/main";

    inputs."selenimum-v0_1_0".type = "github";
  inputs."selenimum-v0_1_0".owner = "riinr";
  inputs."selenimum-v0_1_0".repo = "flake-nimble";
  inputs."selenimum-v0_1_0".ref = "flake-pinning";
  inputs."selenimum-v0_1_0".dir = "nimpkgs/s/selenimum/v0_1_0";

    inputs."selenimum-v0_1_1".type = "github";
  inputs."selenimum-v0_1_1".owner = "riinr";
  inputs."selenimum-v0_1_1".repo = "flake-nimble";
  inputs."selenimum-v0_1_1".ref = "flake-pinning";
  inputs."selenimum-v0_1_1".dir = "nimpkgs/s/selenimum/v0_1_1";

    inputs."selenimum-v0_1_2".type = "github";
  inputs."selenimum-v0_1_2".owner = "riinr";
  inputs."selenimum-v0_1_2".repo = "flake-nimble";
  inputs."selenimum-v0_1_2".ref = "flake-pinning";
  inputs."selenimum-v0_1_2".dir = "nimpkgs/s/selenimum/v0_1_2";

    inputs."selenimum-v0_1_3".type = "github";
  inputs."selenimum-v0_1_3".owner = "riinr";
  inputs."selenimum-v0_1_3".repo = "flake-nimble";
  inputs."selenimum-v0_1_3".ref = "flake-pinning";
  inputs."selenimum-v0_1_3".dir = "nimpkgs/s/selenimum/v0_1_3";

    inputs."selenimum-v0_2_0".type = "github";
  inputs."selenimum-v0_2_0".owner = "riinr";
  inputs."selenimum-v0_2_0".repo = "flake-nimble";
  inputs."selenimum-v0_2_0".ref = "flake-pinning";
  inputs."selenimum-v0_2_0".dir = "nimpkgs/s/selenimum/v0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}