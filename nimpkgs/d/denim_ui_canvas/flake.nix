{
  description = ''HTML Canvas backend for the denim ui engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."denim_ui_canvas-master".type = "github";
  inputs."denim_ui_canvas-master".owner = "riinr";
  inputs."denim_ui_canvas-master".repo = "flake-nimble";
  inputs."denim_ui_canvas-master".ref = "flake-pinning";
  inputs."denim_ui_canvas-master".dir = "nimpkgs/d/denim_ui_canvas/master";
  inputs."denim_ui_canvas-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."denim_ui_canvas-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}