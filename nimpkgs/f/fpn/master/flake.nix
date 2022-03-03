{
  description = ''A fixed point number library in pure Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-fpn-master.flake = false;
  inputs.src-fpn-master.type = "gitlab";
  inputs.src-fpn-master.owner = "lbartoletti";
  inputs.src-fpn-master.repo = "fpn";
  inputs.src-fpn-master.ref = "refs/heads/master";
  inputs.src-fpn-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fpn-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fpn-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fpn-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}