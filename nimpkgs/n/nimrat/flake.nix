{
  description = ''Module for working with rational numbers (fractions)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimrat-master".type = "github";
  inputs."nimrat-master".owner = "riinr";
  inputs."nimrat-master".repo = "flake-nimble";
  inputs."nimrat-master".ref = "flake-pinning";
  inputs."nimrat-master".dir = "nimpkgs/n/nimrat/master";

    inputs."nimrat-v0_1".type = "github";
  inputs."nimrat-v0_1".owner = "riinr";
  inputs."nimrat-v0_1".repo = "flake-nimble";
  inputs."nimrat-v0_1".ref = "flake-pinning";
  inputs."nimrat-v0_1".dir = "nimpkgs/n/nimrat/v0_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}