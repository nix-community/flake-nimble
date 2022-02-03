{
  description = ''A new awesome nimble package'';
  inputs.src-redismodules-v0_1_10.flake = false;
  inputs.src-redismodules-v0_1_10.type = "github";
  inputs.src-redismodules-v0_1_10.owner = "luisacosta828";
  inputs.src-redismodules-v0_1_10.repo = "redismodules";
  inputs.src-redismodules-v0_1_10.ref = "refs/tags/v0.1.10";
  
  outputs = { self, nixpkgs, src-redismodules-v0_1_10, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redismodules-v0_1_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-redismodules-v0_1_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}