{
  description = ''threadsafe memory pool '';
  inputs.src-sharedmempool-master.flake = false;
  inputs.src-sharedmempool-master.type = "github";
  inputs.src-sharedmempool-master.owner = "mikra01";
  inputs.src-sharedmempool-master.repo = "sharedmempool";
  inputs.src-sharedmempool-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sharedmempool-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sharedmempool-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sharedmempool-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}