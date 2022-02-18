{
  description = ''A library to retrieve the list of commonly used licenses from the SPDX License List.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."spdx_licenses-master".type = "github";
  inputs."spdx_licenses-master".owner = "riinr";
  inputs."spdx_licenses-master".repo = "flake-nimble";
  inputs."spdx_licenses-master".ref = "flake-pinning";
  inputs."spdx_licenses-master".dir = "nimpkgs/s/spdx_licenses/master";

    inputs."spdx_licenses-v1_0_0".type = "github";
  inputs."spdx_licenses-v1_0_0".owner = "riinr";
  inputs."spdx_licenses-v1_0_0".repo = "flake-nimble";
  inputs."spdx_licenses-v1_0_0".ref = "flake-pinning";
  inputs."spdx_licenses-v1_0_0".dir = "nimpkgs/s/spdx_licenses/v1_0_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}