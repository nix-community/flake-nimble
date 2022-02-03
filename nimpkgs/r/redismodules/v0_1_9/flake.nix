{
  description = ''A new awesome nimble package'';
  inputs.src-redismodules-v0_1_9.flake = false;
  inputs.src-redismodules-v0_1_9.type = "github";
  inputs.src-redismodules-v0_1_9.owner = "luisacosta828";
  inputs.src-redismodules-v0_1_9.repo = "redismodules";
  inputs.src-redismodules-v0_1_9.ref = "refs/tags/v0.1.9";
  
  outputs = { self, nixpkgs, src-redismodules-v0_1_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redismodules-v0_1_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-redismodules-v0_1_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}