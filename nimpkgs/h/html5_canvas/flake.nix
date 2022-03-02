{
  description = ''HTML5 Canvas and drawing for the JavaScript backend.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."html5_canvas-master".type = "github";
  inputs."html5_canvas-master".owner = "riinr";
  inputs."html5_canvas-master".repo = "flake-nimble";
  inputs."html5_canvas-master".ref = "flake-pinning";
  inputs."html5_canvas-master".dir = "nimpkgs/h/html5_canvas/master";
  inputs."html5_canvas-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."html5_canvas-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}