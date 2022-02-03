{
  description = ''A new awesome nimble package'';
  inputs.src-redismodules-v0_1_6.flake = false;
  inputs.src-redismodules-v0_1_6.type = "github";
  inputs.src-redismodules-v0_1_6.owner = "luisacosta828";
  inputs.src-redismodules-v0_1_6.repo = "redismodules";
  inputs.src-redismodules-v0_1_6.ref = "refs/tags/v0.1.6";
  
  outputs = { self, nixpkgs, src-redismodules-v0_1_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redismodules-v0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-redismodules-v0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}