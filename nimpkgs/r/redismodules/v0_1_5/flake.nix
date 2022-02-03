{
  description = ''A new awesome nimble package'';
  inputs.src-redismodules-v0_1_5.flake = false;
  inputs.src-redismodules-v0_1_5.type = "github";
  inputs.src-redismodules-v0_1_5.owner = "luisacosta828";
  inputs.src-redismodules-v0_1_5.repo = "redismodules";
  inputs.src-redismodules-v0_1_5.ref = "refs/tags/v0.1.5";
  
  outputs = { self, nixpkgs, src-redismodules-v0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redismodules-v0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-redismodules-v0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}