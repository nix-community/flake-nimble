{
  description = ''threadsafe memory pool '';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-sharedmempool-master.flake = false;
  inputs.src-sharedmempool-master.type = "github";
  inputs.src-sharedmempool-master.owner = "mikra01";
  inputs.src-sharedmempool-master.repo = "sharedmempool";
  inputs.src-sharedmempool-master.ref = "refs/heads/master";
  inputs.src-sharedmempool-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sharedmempool-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sharedmempool-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sharedmempool-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}