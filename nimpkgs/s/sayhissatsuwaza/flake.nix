{
  description = ''Say hissatsuwaza (special attack) on your terminal.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."sayhissatsuwaza-master".type = "github";
  inputs."sayhissatsuwaza-master".owner = "riinr";
  inputs."sayhissatsuwaza-master".repo = "flake-nimble";
  inputs."sayhissatsuwaza-master".ref = "flake-pinning";
  inputs."sayhissatsuwaza-master".dir = "nimpkgs/s/sayhissatsuwaza/master";

    inputs."sayhissatsuwaza-v0_1_0".type = "github";
  inputs."sayhissatsuwaza-v0_1_0".owner = "riinr";
  inputs."sayhissatsuwaza-v0_1_0".repo = "flake-nimble";
  inputs."sayhissatsuwaza-v0_1_0".ref = "flake-pinning";
  inputs."sayhissatsuwaza-v0_1_0".dir = "nimpkgs/s/sayhissatsuwaza/v0_1_0";

    inputs."sayhissatsuwaza-v0_2_0".type = "github";
  inputs."sayhissatsuwaza-v0_2_0".owner = "riinr";
  inputs."sayhissatsuwaza-v0_2_0".repo = "flake-nimble";
  inputs."sayhissatsuwaza-v0_2_0".ref = "flake-pinning";
  inputs."sayhissatsuwaza-v0_2_0".dir = "nimpkgs/s/sayhissatsuwaza/v0_2_0";

    inputs."sayhissatsuwaza-v0_3_0".type = "github";
  inputs."sayhissatsuwaza-v0_3_0".owner = "riinr";
  inputs."sayhissatsuwaza-v0_3_0".repo = "flake-nimble";
  inputs."sayhissatsuwaza-v0_3_0".ref = "flake-pinning";
  inputs."sayhissatsuwaza-v0_3_0".dir = "nimpkgs/s/sayhissatsuwaza/v0_3_0";

    inputs."sayhissatsuwaza-v0_4_0".type = "github";
  inputs."sayhissatsuwaza-v0_4_0".owner = "riinr";
  inputs."sayhissatsuwaza-v0_4_0".repo = "flake-nimble";
  inputs."sayhissatsuwaza-v0_4_0".ref = "flake-pinning";
  inputs."sayhissatsuwaza-v0_4_0".dir = "nimpkgs/s/sayhissatsuwaza/v0_4_0";

    inputs."sayhissatsuwaza-v0_5_0".type = "github";
  inputs."sayhissatsuwaza-v0_5_0".owner = "riinr";
  inputs."sayhissatsuwaza-v0_5_0".repo = "flake-nimble";
  inputs."sayhissatsuwaza-v0_5_0".ref = "flake-pinning";
  inputs."sayhissatsuwaza-v0_5_0".dir = "nimpkgs/s/sayhissatsuwaza/v0_5_0";

    inputs."sayhissatsuwaza-v0_6_0".type = "github";
  inputs."sayhissatsuwaza-v0_6_0".owner = "riinr";
  inputs."sayhissatsuwaza-v0_6_0".repo = "flake-nimble";
  inputs."sayhissatsuwaza-v0_6_0".ref = "flake-pinning";
  inputs."sayhissatsuwaza-v0_6_0".dir = "nimpkgs/s/sayhissatsuwaza/v0_6_0";

    inputs."sayhissatsuwaza-v0_7_0".type = "github";
  inputs."sayhissatsuwaza-v0_7_0".owner = "riinr";
  inputs."sayhissatsuwaza-v0_7_0".repo = "flake-nimble";
  inputs."sayhissatsuwaza-v0_7_0".ref = "flake-pinning";
  inputs."sayhissatsuwaza-v0_7_0".dir = "nimpkgs/s/sayhissatsuwaza/v0_7_0";

    inputs."sayhissatsuwaza-v0_8_0".type = "github";
  inputs."sayhissatsuwaza-v0_8_0".owner = "riinr";
  inputs."sayhissatsuwaza-v0_8_0".repo = "flake-nimble";
  inputs."sayhissatsuwaza-v0_8_0".ref = "flake-pinning";
  inputs."sayhissatsuwaza-v0_8_0".dir = "nimpkgs/s/sayhissatsuwaza/v0_8_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}