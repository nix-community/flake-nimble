{
  description = ''Least recently used (LRU) cache'';
  inputs.src-lrucache-master.flake = false;
  inputs.src-lrucache-master.type = "github";
  inputs.src-lrucache-master.owner = "jackhftang";
  inputs.src-lrucache-master.repo = "lrucache";
  inputs.src-lrucache-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-lrucache-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lrucache-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lrucache-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}