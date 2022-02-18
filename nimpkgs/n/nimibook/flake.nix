{
  description = ''A port of mdbook to nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimibook-main".type = "github";
  inputs."nimibook-main".owner = "riinr";
  inputs."nimibook-main".repo = "flake-nimble";
  inputs."nimibook-main".ref = "flake-pinning";
  inputs."nimibook-main".dir = "nimpkgs/n/nimibook/main";

    inputs."nimibook-v0_2_0".type = "github";
  inputs."nimibook-v0_2_0".owner = "riinr";
  inputs."nimibook-v0_2_0".repo = "flake-nimble";
  inputs."nimibook-v0_2_0".ref = "flake-pinning";
  inputs."nimibook-v0_2_0".dir = "nimpkgs/n/nimibook/v0_2_0";

    inputs."nimibook-v0_2_1".type = "github";
  inputs."nimibook-v0_2_1".owner = "riinr";
  inputs."nimibook-v0_2_1".repo = "flake-nimble";
  inputs."nimibook-v0_2_1".ref = "flake-pinning";
  inputs."nimibook-v0_2_1".dir = "nimpkgs/n/nimibook/v0_2_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}