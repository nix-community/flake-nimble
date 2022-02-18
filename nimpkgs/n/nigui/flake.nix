{
  description = ''NiGui is a cross-platform, desktop GUI toolkit using native widgets.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nigui-master".type = "github";
  inputs."nigui-master".owner = "riinr";
  inputs."nigui-master".repo = "flake-nimble";
  inputs."nigui-master".ref = "flake-pinning";
  inputs."nigui-master".dir = "nimpkgs/n/nigui/master";

    inputs."nigui-v0_2_0".type = "github";
  inputs."nigui-v0_2_0".owner = "riinr";
  inputs."nigui-v0_2_0".repo = "flake-nimble";
  inputs."nigui-v0_2_0".ref = "flake-pinning";
  inputs."nigui-v0_2_0".dir = "nimpkgs/n/nigui/v0_2_0";

    inputs."nigui-v0_2_1".type = "github";
  inputs."nigui-v0_2_1".owner = "riinr";
  inputs."nigui-v0_2_1".repo = "flake-nimble";
  inputs."nigui-v0_2_1".ref = "flake-pinning";
  inputs."nigui-v0_2_1".dir = "nimpkgs/n/nigui/v0_2_1";

    inputs."nigui-v0_2_2".type = "github";
  inputs."nigui-v0_2_2".owner = "riinr";
  inputs."nigui-v0_2_2".repo = "flake-nimble";
  inputs."nigui-v0_2_2".ref = "flake-pinning";
  inputs."nigui-v0_2_2".dir = "nimpkgs/n/nigui/v0_2_2";

    inputs."nigui-v0_2_3".type = "github";
  inputs."nigui-v0_2_3".owner = "riinr";
  inputs."nigui-v0_2_3".repo = "flake-nimble";
  inputs."nigui-v0_2_3".ref = "flake-pinning";
  inputs."nigui-v0_2_3".dir = "nimpkgs/n/nigui/v0_2_3";

    inputs."nigui-v0_2_4".type = "github";
  inputs."nigui-v0_2_4".owner = "riinr";
  inputs."nigui-v0_2_4".repo = "flake-nimble";
  inputs."nigui-v0_2_4".ref = "flake-pinning";
  inputs."nigui-v0_2_4".dir = "nimpkgs/n/nigui/v0_2_4";

    inputs."nigui-v0_2_5".type = "github";
  inputs."nigui-v0_2_5".owner = "riinr";
  inputs."nigui-v0_2_5".repo = "flake-nimble";
  inputs."nigui-v0_2_5".ref = "flake-pinning";
  inputs."nigui-v0_2_5".dir = "nimpkgs/n/nigui/v0_2_5";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}