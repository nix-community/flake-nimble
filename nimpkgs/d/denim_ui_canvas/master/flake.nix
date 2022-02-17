{
  description = ''HTML Canvas backend for the denim ui engine'';
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

  outputs = { self, nixpkgs, src-denim_ui_canvas-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-denim_ui_canvas-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-denim_ui_canvas-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}