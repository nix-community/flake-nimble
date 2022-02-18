{
  description = ''HTML5 Canvas and drawing for the JavaScript backend.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-html5_canvas-master.flake = false;
  inputs.src-html5_canvas-master.type = "gitlab";
  inputs.src-html5_canvas-master.owner = "define-private-public";
  inputs.src-html5_canvas-master.repo = "html5-canvas-Nim";
  inputs.src-html5_canvas-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-html5_canvas-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-html5_canvas-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-html5_canvas-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}