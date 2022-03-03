{
  description = ''Converts 2D linear graph coordinates to pixels on screen'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-libgraph-master.flake = false;
  inputs.src-libgraph-master.type = "github";
  inputs.src-libgraph-master.owner = "Mnenmenth";
  inputs.src-libgraph-master.repo = "libgraphnim";
  inputs.src-libgraph-master.ref = "refs/heads/master";
  inputs.src-libgraph-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libgraph-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libgraph-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libgraph-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}