{
  description = ''Library for parsing TOML files.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."parsetoml-master".type = "github";
  inputs."parsetoml-master".owner = "riinr";
  inputs."parsetoml-master".repo = "flake-nimble";
  inputs."parsetoml-master".ref = "flake-pinning";
  inputs."parsetoml-master".dir = "nimpkgs/p/parsetoml/master";

    inputs."parsetoml-v0_4_0".type = "github";
  inputs."parsetoml-v0_4_0".owner = "riinr";
  inputs."parsetoml-v0_4_0".repo = "flake-nimble";
  inputs."parsetoml-v0_4_0".ref = "flake-pinning";
  inputs."parsetoml-v0_4_0".dir = "nimpkgs/p/parsetoml/v0_4_0";

    inputs."parsetoml-v0_5_0".type = "github";
  inputs."parsetoml-v0_5_0".owner = "riinr";
  inputs."parsetoml-v0_5_0".repo = "flake-nimble";
  inputs."parsetoml-v0_5_0".ref = "flake-pinning";
  inputs."parsetoml-v0_5_0".dir = "nimpkgs/p/parsetoml/v0_5_0";

    inputs."parsetoml-v0_6_0".type = "github";
  inputs."parsetoml-v0_6_0".owner = "riinr";
  inputs."parsetoml-v0_6_0".repo = "flake-nimble";
  inputs."parsetoml-v0_6_0".ref = "flake-pinning";
  inputs."parsetoml-v0_6_0".dir = "nimpkgs/p/parsetoml/v0_6_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}