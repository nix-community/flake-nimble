{
  description = ''official redis client for Nim'';
  inputs.src-redis-master.flake = false;
  inputs.src-redis-master.type = "github";
  inputs.src-redis-master.owner = "nim-lang";
  inputs.src-redis-master.repo = "redis";
  inputs.src-redis-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-redis-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redis-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-redis-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}