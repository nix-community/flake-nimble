{
  description = ''C macro for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimish-master".type = "github";
  inputs."nimish-master".owner = "riinr";
  inputs."nimish-master".repo = "flake-nimble";
  inputs."nimish-master".ref = "flake-pinning";
  inputs."nimish-master".dir = "nimpkgs/n/nimish/master";

    inputs."nimish-v0_1_0".type = "github";
  inputs."nimish-v0_1_0".owner = "riinr";
  inputs."nimish-v0_1_0".repo = "flake-nimble";
  inputs."nimish-v0_1_0".ref = "flake-pinning";
  inputs."nimish-v0_1_0".dir = "nimpkgs/n/nimish/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}