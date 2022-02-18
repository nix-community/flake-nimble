{
  description = ''Converts html to karax.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."html2karax-master".type = "github";
  inputs."html2karax-master".owner = "riinr";
  inputs."html2karax-master".repo = "flake-nimble";
  inputs."html2karax-master".ref = "flake-pinning";
  inputs."html2karax-master".dir = "nimpkgs/h/html2karax/master";

    inputs."html2karax-v1_0_0".type = "github";
  inputs."html2karax-v1_0_0".owner = "riinr";
  inputs."html2karax-v1_0_0".repo = "flake-nimble";
  inputs."html2karax-v1_0_0".ref = "flake-pinning";
  inputs."html2karax-v1_0_0".dir = "nimpkgs/h/html2karax/v1_0_0";

    inputs."html2karax-v1_0_1".type = "github";
  inputs."html2karax-v1_0_1".owner = "riinr";
  inputs."html2karax-v1_0_1".repo = "flake-nimble";
  inputs."html2karax-v1_0_1".ref = "flake-pinning";
  inputs."html2karax-v1_0_1".dir = "nimpkgs/h/html2karax/v1_0_1";

    inputs."html2karax-v1_1_0".type = "github";
  inputs."html2karax-v1_1_0".owner = "riinr";
  inputs."html2karax-v1_1_0".repo = "flake-nimble";
  inputs."html2karax-v1_1_0".ref = "flake-pinning";
  inputs."html2karax-v1_1_0".dir = "nimpkgs/h/html2karax/v1_1_0";

    inputs."html2karax-v1_1_1".type = "github";
  inputs."html2karax-v1_1_1".owner = "riinr";
  inputs."html2karax-v1_1_1".repo = "flake-nimble";
  inputs."html2karax-v1_1_1".ref = "flake-pinning";
  inputs."html2karax-v1_1_1".dir = "nimpkgs/h/html2karax/v1_1_1";

    inputs."html2karax-v1_1_2".type = "github";
  inputs."html2karax-v1_1_2".owner = "riinr";
  inputs."html2karax-v1_1_2".repo = "flake-nimble";
  inputs."html2karax-v1_1_2".ref = "flake-pinning";
  inputs."html2karax-v1_1_2".dir = "nimpkgs/h/html2karax/v1_1_2";

    inputs."html2karax-v1_1_3".type = "github";
  inputs."html2karax-v1_1_3".owner = "riinr";
  inputs."html2karax-v1_1_3".repo = "flake-nimble";
  inputs."html2karax-v1_1_3".ref = "flake-pinning";
  inputs."html2karax-v1_1_3".dir = "nimpkgs/h/html2karax/v1_1_3";

    inputs."html2karax-v1_2_0".type = "github";
  inputs."html2karax-v1_2_0".owner = "riinr";
  inputs."html2karax-v1_2_0".repo = "flake-nimble";
  inputs."html2karax-v1_2_0".ref = "flake-pinning";
  inputs."html2karax-v1_2_0".dir = "nimpkgs/h/html2karax/v1_2_0";

    inputs."html2karax-v1_2_1".type = "github";
  inputs."html2karax-v1_2_1".owner = "riinr";
  inputs."html2karax-v1_2_1".repo = "flake-nimble";
  inputs."html2karax-v1_2_1".ref = "flake-pinning";
  inputs."html2karax-v1_2_1".dir = "nimpkgs/h/html2karax/v1_2_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}