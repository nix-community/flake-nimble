{
  description = ''HTML5 Canvas and drawing for the JavaScript backend.'';
  inputs.src-html5_canvas-master.flake = false;
  inputs.src-html5_canvas-master.type = "gitlab";
  inputs.src-html5_canvas-master.owner = "define-private-public";
  inputs.src-html5_canvas-master.repo = "HTML5-Canvas-Nim";
  inputs.src-html5_canvas-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-html5_canvas-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-html5_canvas-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-html5_canvas-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}