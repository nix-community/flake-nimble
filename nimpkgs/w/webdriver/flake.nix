{
  description = ''Implementation of the WebDriver w3c spec.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."webdriver-master".type = "github";
  inputs."webdriver-master".owner = "riinr";
  inputs."webdriver-master".repo = "flake-nimble";
  inputs."webdriver-master".ref = "flake-pinning";
  inputs."webdriver-master".dir = "nimpkgs/w/webdriver/master";

    inputs."webdriver-v0_1_0".type = "github";
  inputs."webdriver-v0_1_0".owner = "riinr";
  inputs."webdriver-v0_1_0".repo = "flake-nimble";
  inputs."webdriver-v0_1_0".ref = "flake-pinning";
  inputs."webdriver-v0_1_0".dir = "nimpkgs/w/webdriver/v0_1_0";

    inputs."webdriver-v0_2_0".type = "github";
  inputs."webdriver-v0_2_0".owner = "riinr";
  inputs."webdriver-v0_2_0".repo = "flake-nimble";
  inputs."webdriver-v0_2_0".ref = "flake-pinning";
  inputs."webdriver-v0_2_0".dir = "nimpkgs/w/webdriver/v0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}