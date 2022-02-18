{
  description = ''A command handler for the dimscord discord library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."dimscmd-master".type = "github";
  inputs."dimscmd-master".owner = "riinr";
  inputs."dimscmd-master".repo = "flake-nimble";
  inputs."dimscmd-master".ref = "flake-pinning";
  inputs."dimscmd-master".dir = "nimpkgs/d/dimscmd/master";

    inputs."dimscmd-0_2_0".type = "github";
  inputs."dimscmd-0_2_0".owner = "riinr";
  inputs."dimscmd-0_2_0".repo = "flake-nimble";
  inputs."dimscmd-0_2_0".ref = "flake-pinning";
  inputs."dimscmd-0_2_0".dir = "nimpkgs/d/dimscmd/0_2_0";

    inputs."dimscmd-0_2_1".type = "github";
  inputs."dimscmd-0_2_1".owner = "riinr";
  inputs."dimscmd-0_2_1".repo = "flake-nimble";
  inputs."dimscmd-0_2_1".ref = "flake-pinning";
  inputs."dimscmd-0_2_1".dir = "nimpkgs/d/dimscmd/0_2_1";

    inputs."dimscmd-1_0_0".type = "github";
  inputs."dimscmd-1_0_0".owner = "riinr";
  inputs."dimscmd-1_0_0".repo = "flake-nimble";
  inputs."dimscmd-1_0_0".ref = "flake-pinning";
  inputs."dimscmd-1_0_0".dir = "nimpkgs/d/dimscmd/1_0_0";

    inputs."dimscmd-1_1_0".type = "github";
  inputs."dimscmd-1_1_0".owner = "riinr";
  inputs."dimscmd-1_1_0".repo = "flake-nimble";
  inputs."dimscmd-1_1_0".ref = "flake-pinning";
  inputs."dimscmd-1_1_0".dir = "nimpkgs/d/dimscmd/1_1_0";

    inputs."dimscmd-1_1_1".type = "github";
  inputs."dimscmd-1_1_1".owner = "riinr";
  inputs."dimscmd-1_1_1".repo = "flake-nimble";
  inputs."dimscmd-1_1_1".ref = "flake-pinning";
  inputs."dimscmd-1_1_1".dir = "nimpkgs/d/dimscmd/1_1_1";

    inputs."dimscmd-1_1_2".type = "github";
  inputs."dimscmd-1_1_2".owner = "riinr";
  inputs."dimscmd-1_1_2".repo = "flake-nimble";
  inputs."dimscmd-1_1_2".ref = "flake-pinning";
  inputs."dimscmd-1_1_2".dir = "nimpkgs/d/dimscmd/1_1_2";

    inputs."dimscmd-1_2_0".type = "github";
  inputs."dimscmd-1_2_0".owner = "riinr";
  inputs."dimscmd-1_2_0".repo = "flake-nimble";
  inputs."dimscmd-1_2_0".ref = "flake-pinning";
  inputs."dimscmd-1_2_0".dir = "nimpkgs/d/dimscmd/1_2_0";

    inputs."dimscmd-1_2_1".type = "github";
  inputs."dimscmd-1_2_1".owner = "riinr";
  inputs."dimscmd-1_2_1".repo = "flake-nimble";
  inputs."dimscmd-1_2_1".ref = "flake-pinning";
  inputs."dimscmd-1_2_1".dir = "nimpkgs/d/dimscmd/1_2_1";

    inputs."dimscmd-1_2_2".type = "github";
  inputs."dimscmd-1_2_2".owner = "riinr";
  inputs."dimscmd-1_2_2".repo = "flake-nimble";
  inputs."dimscmd-1_2_2".ref = "flake-pinning";
  inputs."dimscmd-1_2_2".dir = "nimpkgs/d/dimscmd/1_2_2";

    inputs."dimscmd-1_3_0".type = "github";
  inputs."dimscmd-1_3_0".owner = "riinr";
  inputs."dimscmd-1_3_0".repo = "flake-nimble";
  inputs."dimscmd-1_3_0".ref = "flake-pinning";
  inputs."dimscmd-1_3_0".dir = "nimpkgs/d/dimscmd/1_3_0";

    inputs."dimscmd-1_3_1".type = "github";
  inputs."dimscmd-1_3_1".owner = "riinr";
  inputs."dimscmd-1_3_1".repo = "flake-nimble";
  inputs."dimscmd-1_3_1".ref = "flake-pinning";
  inputs."dimscmd-1_3_1".dir = "nimpkgs/d/dimscmd/1_3_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}