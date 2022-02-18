{
  description = ''Least recently used (LRU) cache'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-lrucache-master.flake = false;
  inputs.src-lrucache-master.type = "github";
  inputs.src-lrucache-master.owner = "jackhftang";
  inputs.src-lrucache-master.repo = "lrucache";
  inputs.src-lrucache-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-lrucache-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lrucache-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-lrucache-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}