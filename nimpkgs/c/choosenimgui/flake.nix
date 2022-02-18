{
  description = ''A simple GUI for choosenim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."choosenimgui-master".type = "github";
  inputs."choosenimgui-master".owner = "riinr";
  inputs."choosenimgui-master".repo = "flake-nimble";
  inputs."choosenimgui-master".ref = "flake-pinning";
  inputs."choosenimgui-master".dir = "nimpkgs/c/choosenimgui/master";

    inputs."choosenimgui-v0_1_0".type = "github";
  inputs."choosenimgui-v0_1_0".owner = "riinr";
  inputs."choosenimgui-v0_1_0".repo = "flake-nimble";
  inputs."choosenimgui-v0_1_0".ref = "flake-pinning";
  inputs."choosenimgui-v0_1_0".dir = "nimpkgs/c/choosenimgui/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}