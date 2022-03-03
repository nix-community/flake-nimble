{
  description = ''A command and library to generate mazes'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-maze-master.flake = false;
  inputs.src-maze-master.type = "github";
  inputs.src-maze-master.owner = "jiro4989";
  inputs.src-maze-master.repo = "maze";
  inputs.src-maze-master.ref = "refs/heads/master";
  inputs.src-maze-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-maze-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-maze-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-maze-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}