{
  description = ''A new awesome nimble package'';
  inputs.src-redismodules-master.flake = false;
  inputs.src-redismodules-master.type = "github";
  inputs.src-redismodules-master.owner = "luisacosta828";
  inputs.src-redismodules-master.repo = "redismodules";
  inputs.src-redismodules-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-redismodules-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redismodules-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-redismodules-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}