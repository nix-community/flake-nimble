{
  description = ''mConnect Standardised Response Package'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."mcresponse-master".type = "github";
  inputs."mcresponse-master".owner = "riinr";
  inputs."mcresponse-master".repo = "flake-nimble";
  inputs."mcresponse-master".ref = "flake-pinning";
  inputs."mcresponse-master".dir = "nimpkgs/m/mcresponse/master";

    inputs."mcresponse-v0_1_1".type = "github";
  inputs."mcresponse-v0_1_1".owner = "riinr";
  inputs."mcresponse-v0_1_1".repo = "flake-nimble";
  inputs."mcresponse-v0_1_1".ref = "flake-pinning";
  inputs."mcresponse-v0_1_1".dir = "nimpkgs/m/mcresponse/v0_1_1";

    inputs."mcresponse-v0_2_0".type = "github";
  inputs."mcresponse-v0_2_0".owner = "riinr";
  inputs."mcresponse-v0_2_0".repo = "flake-nimble";
  inputs."mcresponse-v0_2_0".ref = "flake-pinning";
  inputs."mcresponse-v0_2_0".dir = "nimpkgs/m/mcresponse/v0_2_0";

    inputs."mcresponse-v0_3_0".type = "github";
  inputs."mcresponse-v0_3_0".owner = "riinr";
  inputs."mcresponse-v0_3_0".repo = "flake-nimble";
  inputs."mcresponse-v0_3_0".ref = "flake-pinning";
  inputs."mcresponse-v0_3_0".dir = "nimpkgs/m/mcresponse/v0_3_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}