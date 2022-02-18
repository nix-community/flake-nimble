{
  description = ''A Discord Bot & REST Library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."dimscord-master".type = "github";
  inputs."dimscord-master".owner = "riinr";
  inputs."dimscord-master".repo = "flake-nimble";
  inputs."dimscord-master".ref = "flake-pinning";
  inputs."dimscord-master".dir = "nimpkgs/d/dimscord/master";

    inputs."dimscord-v1_0_0".type = "github";
  inputs."dimscord-v1_0_0".owner = "riinr";
  inputs."dimscord-v1_0_0".repo = "flake-nimble";
  inputs."dimscord-v1_0_0".ref = "flake-pinning";
  inputs."dimscord-v1_0_0".dir = "nimpkgs/d/dimscord/v1_0_0";

    inputs."dimscord-v1_0_1".type = "github";
  inputs."dimscord-v1_0_1".owner = "riinr";
  inputs."dimscord-v1_0_1".repo = "flake-nimble";
  inputs."dimscord-v1_0_1".ref = "flake-pinning";
  inputs."dimscord-v1_0_1".dir = "nimpkgs/d/dimscord/v1_0_1";

    inputs."dimscord-v1_0_6".type = "github";
  inputs."dimscord-v1_0_6".owner = "riinr";
  inputs."dimscord-v1_0_6".repo = "flake-nimble";
  inputs."dimscord-v1_0_6".ref = "flake-pinning";
  inputs."dimscord-v1_0_6".dir = "nimpkgs/d/dimscord/v1_0_6";

    inputs."dimscord-v1_0_7".type = "github";
  inputs."dimscord-v1_0_7".owner = "riinr";
  inputs."dimscord-v1_0_7".repo = "flake-nimble";
  inputs."dimscord-v1_0_7".ref = "flake-pinning";
  inputs."dimscord-v1_0_7".dir = "nimpkgs/d/dimscord/v1_0_7";

    inputs."dimscord-v1_2_0".type = "github";
  inputs."dimscord-v1_2_0".owner = "riinr";
  inputs."dimscord-v1_2_0".repo = "flake-nimble";
  inputs."dimscord-v1_2_0".ref = "flake-pinning";
  inputs."dimscord-v1_2_0".dir = "nimpkgs/d/dimscord/v1_2_0";

    inputs."dimscord-v1_2_1".type = "github";
  inputs."dimscord-v1_2_1".owner = "riinr";
  inputs."dimscord-v1_2_1".repo = "flake-nimble";
  inputs."dimscord-v1_2_1".ref = "flake-pinning";
  inputs."dimscord-v1_2_1".dir = "nimpkgs/d/dimscord/v1_2_1";

    inputs."dimscord-v1_2_4".type = "github";
  inputs."dimscord-v1_2_4".owner = "riinr";
  inputs."dimscord-v1_2_4".repo = "flake-nimble";
  inputs."dimscord-v1_2_4".ref = "flake-pinning";
  inputs."dimscord-v1_2_4".dir = "nimpkgs/d/dimscord/v1_2_4";

    inputs."dimscord-v1_2_5".type = "github";
  inputs."dimscord-v1_2_5".owner = "riinr";
  inputs."dimscord-v1_2_5".repo = "flake-nimble";
  inputs."dimscord-v1_2_5".ref = "flake-pinning";
  inputs."dimscord-v1_2_5".dir = "nimpkgs/d/dimscord/v1_2_5";

    inputs."dimscord-v1_3_0".type = "github";
  inputs."dimscord-v1_3_0".owner = "riinr";
  inputs."dimscord-v1_3_0".repo = "flake-nimble";
  inputs."dimscord-v1_3_0".ref = "flake-pinning";
  inputs."dimscord-v1_3_0".dir = "nimpkgs/d/dimscord/v1_3_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}