{
  description = ''Graph data structure library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-patgraph-master.flake = false;
  inputs.src-patgraph-master.type = "github";
  inputs.src-patgraph-master.owner = "planetis-m";
  inputs.src-patgraph-master.repo = "patgraph";
  inputs.src-patgraph-master.ref = "refs/heads/master";
  inputs.src-patgraph-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-patgraph-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-patgraph-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-patgraph-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}