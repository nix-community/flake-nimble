{
  description = ''Least recently used (LRU) cache'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-lrucache-master.flake = false;
  inputs.src-lrucache-master.type = "github";
  inputs.src-lrucache-master.owner = "jackhftang";
  inputs.src-lrucache-master.repo = "lrucache";
  inputs.src-lrucache-master.ref = "refs/heads/master";
  inputs.src-lrucache-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-lrucache-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lrucache-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-lrucache-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}