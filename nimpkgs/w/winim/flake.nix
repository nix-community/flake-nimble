{
  description = ''Nim's Windows API and COM Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."winim-master".type = "github";
  inputs."winim-master".owner = "riinr";
  inputs."winim-master".repo = "flake-nimble";
  inputs."winim-master".ref = "flake-pinning";
  inputs."winim-master".dir = "nimpkgs/w/winim/master";

    inputs."winim-3_6_0".type = "github";
  inputs."winim-3_6_0".owner = "riinr";
  inputs."winim-3_6_0".repo = "flake-nimble";
  inputs."winim-3_6_0".ref = "flake-pinning";
  inputs."winim-3_6_0".dir = "nimpkgs/w/winim/3_6_0";

    inputs."winim-3_6_1".type = "github";
  inputs."winim-3_6_1".owner = "riinr";
  inputs."winim-3_6_1".repo = "flake-nimble";
  inputs."winim-3_6_1".ref = "flake-pinning";
  inputs."winim-3_6_1".dir = "nimpkgs/w/winim/3_6_1";

    inputs."winim-3_7_0".type = "github";
  inputs."winim-3_7_0".owner = "riinr";
  inputs."winim-3_7_0".repo = "flake-nimble";
  inputs."winim-3_7_0".ref = "flake-pinning";
  inputs."winim-3_7_0".dir = "nimpkgs/w/winim/3_7_0";

    inputs."winim-3_7_1".type = "github";
  inputs."winim-3_7_1".owner = "riinr";
  inputs."winim-3_7_1".repo = "flake-nimble";
  inputs."winim-3_7_1".ref = "flake-pinning";
  inputs."winim-3_7_1".dir = "nimpkgs/w/winim/3_7_1";

    inputs."winim-3_7_2".type = "github";
  inputs."winim-3_7_2".owner = "riinr";
  inputs."winim-3_7_2".repo = "flake-nimble";
  inputs."winim-3_7_2".ref = "flake-pinning";
  inputs."winim-3_7_2".dir = "nimpkgs/w/winim/3_7_2";

    inputs."winim-3_8_0".type = "github";
  inputs."winim-3_8_0".owner = "riinr";
  inputs."winim-3_8_0".repo = "flake-nimble";
  inputs."winim-3_8_0".ref = "flake-pinning";
  inputs."winim-3_8_0".dir = "nimpkgs/w/winim/3_8_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}