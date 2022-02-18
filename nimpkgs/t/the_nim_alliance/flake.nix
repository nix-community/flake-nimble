{
  description = ''A Nim wrapper for TheBlueAlliance'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."the_nim_alliance-master".type = "github";
  inputs."the_nim_alliance-master".owner = "riinr";
  inputs."the_nim_alliance-master".repo = "flake-nimble";
  inputs."the_nim_alliance-master".ref = "flake-pinning";
  inputs."the_nim_alliance-master".dir = "nimpkgs/t/the_nim_alliance/master";

    inputs."the_nim_alliance-v0_1_0".type = "github";
  inputs."the_nim_alliance-v0_1_0".owner = "riinr";
  inputs."the_nim_alliance-v0_1_0".repo = "flake-nimble";
  inputs."the_nim_alliance-v0_1_0".ref = "flake-pinning";
  inputs."the_nim_alliance-v0_1_0".dir = "nimpkgs/t/the_nim_alliance/v0_1_0";

    inputs."the_nim_alliance-v0_1_1".type = "github";
  inputs."the_nim_alliance-v0_1_1".owner = "riinr";
  inputs."the_nim_alliance-v0_1_1".repo = "flake-nimble";
  inputs."the_nim_alliance-v0_1_1".ref = "flake-pinning";
  inputs."the_nim_alliance-v0_1_1".dir = "nimpkgs/t/the_nim_alliance/v0_1_1";

    inputs."the_nim_alliance-v0_1_2".type = "github";
  inputs."the_nim_alliance-v0_1_2".owner = "riinr";
  inputs."the_nim_alliance-v0_1_2".repo = "flake-nimble";
  inputs."the_nim_alliance-v0_1_2".ref = "flake-pinning";
  inputs."the_nim_alliance-v0_1_2".dir = "nimpkgs/t/the_nim_alliance/v0_1_2";

    inputs."the_nim_alliance-v0_1_3".type = "github";
  inputs."the_nim_alliance-v0_1_3".owner = "riinr";
  inputs."the_nim_alliance-v0_1_3".repo = "flake-nimble";
  inputs."the_nim_alliance-v0_1_3".ref = "flake-pinning";
  inputs."the_nim_alliance-v0_1_3".dir = "nimpkgs/t/the_nim_alliance/v0_1_3";

    inputs."the_nim_alliance-v0_1_4".type = "github";
  inputs."the_nim_alliance-v0_1_4".owner = "riinr";
  inputs."the_nim_alliance-v0_1_4".repo = "flake-nimble";
  inputs."the_nim_alliance-v0_1_4".ref = "flake-pinning";
  inputs."the_nim_alliance-v0_1_4".dir = "nimpkgs/t/the_nim_alliance/v0_1_4";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}