{
  description = ''a wrapper for the Canvas API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-jscanvas-master.flake = false;
  inputs.src-jscanvas-master.type = "github";
  inputs.src-jscanvas-master.owner = "planetis-m";
  inputs.src-jscanvas-master.repo = "jscanvas";
  inputs.src-jscanvas-master.ref = "refs/heads/master";
  inputs.src-jscanvas-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-jscanvas-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jscanvas-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jscanvas-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}