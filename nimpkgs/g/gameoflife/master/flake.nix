{
  description = ''gameoflife is library for Game of Life.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-gameoflife-master.flake = false;
  inputs.src-gameoflife-master.type = "github";
  inputs.src-gameoflife-master.owner = "jiro4989";
  inputs.src-gameoflife-master.repo = "gameoflife";
  inputs.src-gameoflife-master.ref = "refs/heads/master";
  inputs.src-gameoflife-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-gameoflife-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gameoflife-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gameoflife-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}