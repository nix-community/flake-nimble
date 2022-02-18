{
  description = ''HTML Canvas backend for the denim ui engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-denim_ui_canvas-master.flake = false;
  inputs.src-denim_ui_canvas-master.type = "github";
  inputs.src-denim_ui_canvas-master.owner = "nortero-code";
  inputs.src-denim_ui_canvas-master.repo = "denim-ui-canvas";
  inputs.src-denim_ui_canvas-master.ref = "refs/heads/master";
  
  
  inputs."denim_ui".type = "github";
  inputs."denim_ui".owner = "riinr";
  inputs."denim_ui".repo = "flake-nimble";
  inputs."denim_ui".ref = "flake-pinning";
  inputs."denim_ui".dir = "nimpkgs/d/denim_ui";

  outputs = { self, nixpkgs, flakeNimbleLib, src-denim_ui_canvas-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-denim_ui_canvas-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-denim_ui_canvas-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}