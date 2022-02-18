{
  description = ''X-Plane XPLM SDK wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."XPLM-Nim-develop".type = "github";
  inputs."XPLM-Nim-develop".owner = "riinr";
  inputs."XPLM-Nim-develop".repo = "flake-nimble";
  inputs."XPLM-Nim-develop".ref = "flake-pinning";
  inputs."XPLM-Nim-develop".dir = "nimpkgs/x/XPLM-Nim/develop";

    inputs."XPLM-Nim-master".type = "github";
  inputs."XPLM-Nim-master".owner = "riinr";
  inputs."XPLM-Nim-master".repo = "flake-nimble";
  inputs."XPLM-Nim-master".ref = "flake-pinning";
  inputs."XPLM-Nim-master".dir = "nimpkgs/x/XPLM-Nim/master";

    inputs."XPLM-Nim-v0_1_0".type = "github";
  inputs."XPLM-Nim-v0_1_0".owner = "riinr";
  inputs."XPLM-Nim-v0_1_0".repo = "flake-nimble";
  inputs."XPLM-Nim-v0_1_0".ref = "flake-pinning";
  inputs."XPLM-Nim-v0_1_0".dir = "nimpkgs/x/XPLM-Nim/v0_1_0";

    inputs."XPLM-Nim-v0_1_1".type = "github";
  inputs."XPLM-Nim-v0_1_1".owner = "riinr";
  inputs."XPLM-Nim-v0_1_1".repo = "flake-nimble";
  inputs."XPLM-Nim-v0_1_1".ref = "flake-pinning";
  inputs."XPLM-Nim-v0_1_1".dir = "nimpkgs/x/XPLM-Nim/v0_1_1";

    inputs."XPLM-Nim-v0_2_0".type = "github";
  inputs."XPLM-Nim-v0_2_0".owner = "riinr";
  inputs."XPLM-Nim-v0_2_0".repo = "flake-nimble";
  inputs."XPLM-Nim-v0_2_0".ref = "flake-pinning";
  inputs."XPLM-Nim-v0_2_0".dir = "nimpkgs/x/XPLM-Nim/v0_2_0";

    inputs."XPLM-Nim-v0_2_1".type = "github";
  inputs."XPLM-Nim-v0_2_1".owner = "riinr";
  inputs."XPLM-Nim-v0_2_1".repo = "flake-nimble";
  inputs."XPLM-Nim-v0_2_1".ref = "flake-pinning";
  inputs."XPLM-Nim-v0_2_1".dir = "nimpkgs/x/XPLM-Nim/v0_2_1";

    inputs."XPLM-Nim-v0_2_2".type = "github";
  inputs."XPLM-Nim-v0_2_2".owner = "riinr";
  inputs."XPLM-Nim-v0_2_2".repo = "flake-nimble";
  inputs."XPLM-Nim-v0_2_2".ref = "flake-pinning";
  inputs."XPLM-Nim-v0_2_2".dir = "nimpkgs/x/XPLM-Nim/v0_2_2";

    inputs."XPLM-Nim-v0_2_3".type = "github";
  inputs."XPLM-Nim-v0_2_3".owner = "riinr";
  inputs."XPLM-Nim-v0_2_3".repo = "flake-nimble";
  inputs."XPLM-Nim-v0_2_3".ref = "flake-pinning";
  inputs."XPLM-Nim-v0_2_3".dir = "nimpkgs/x/XPLM-Nim/v0_2_3";

    inputs."XPLM-Nim-v0_2_4".type = "github";
  inputs."XPLM-Nim-v0_2_4".owner = "riinr";
  inputs."XPLM-Nim-v0_2_4".repo = "flake-nimble";
  inputs."XPLM-Nim-v0_2_4".ref = "flake-pinning";
  inputs."XPLM-Nim-v0_2_4".dir = "nimpkgs/x/XPLM-Nim/v0_2_4";

    inputs."XPLM-Nim-v0_2_5".type = "github";
  inputs."XPLM-Nim-v0_2_5".owner = "riinr";
  inputs."XPLM-Nim-v0_2_5".repo = "flake-nimble";
  inputs."XPLM-Nim-v0_2_5".ref = "flake-pinning";
  inputs."XPLM-Nim-v0_2_5".dir = "nimpkgs/x/XPLM-Nim/v0_2_5";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}