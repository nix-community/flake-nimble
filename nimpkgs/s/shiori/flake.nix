{
  description = ''SHIORI Protocol Parser/Builder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."shiori-master".type = "github";
  inputs."shiori-master".owner = "riinr";
  inputs."shiori-master".repo = "flake-nimble";
  inputs."shiori-master".ref = "flake-pinning";
  inputs."shiori-master".dir = "nimpkgs/s/shiori/master";

    inputs."shiori-v1_0_0".type = "github";
  inputs."shiori-v1_0_0".owner = "riinr";
  inputs."shiori-v1_0_0".repo = "flake-nimble";
  inputs."shiori-v1_0_0".ref = "flake-pinning";
  inputs."shiori-v1_0_0".dir = "nimpkgs/s/shiori/v1_0_0";

    inputs."shiori-v1_1_0".type = "github";
  inputs."shiori-v1_1_0".owner = "riinr";
  inputs."shiori-v1_1_0".repo = "flake-nimble";
  inputs."shiori-v1_1_0".ref = "flake-pinning";
  inputs."shiori-v1_1_0".dir = "nimpkgs/s/shiori/v1_1_0";

    inputs."shiori-v1_2_0".type = "github";
  inputs."shiori-v1_2_0".owner = "riinr";
  inputs."shiori-v1_2_0".repo = "flake-nimble";
  inputs."shiori-v1_2_0".ref = "flake-pinning";
  inputs."shiori-v1_2_0".dir = "nimpkgs/s/shiori/v1_2_0";

    inputs."shiori-v1_3_0".type = "github";
  inputs."shiori-v1_3_0".owner = "riinr";
  inputs."shiori-v1_3_0".repo = "flake-nimble";
  inputs."shiori-v1_3_0".ref = "flake-pinning";
  inputs."shiori-v1_3_0".dir = "nimpkgs/s/shiori/v1_3_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}