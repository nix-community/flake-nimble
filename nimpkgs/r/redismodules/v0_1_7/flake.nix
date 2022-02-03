{
  description = ''A new awesome nimble package'';
  inputs.src-redismodules-v0_1_7.flake = false;
  inputs.src-redismodules-v0_1_7.type = "github";
  inputs.src-redismodules-v0_1_7.owner = "luisacosta828";
  inputs.src-redismodules-v0_1_7.repo = "redismodules";
  inputs.src-redismodules-v0_1_7.ref = "refs/tags/v0.1.7";
  
  outputs = { self, nixpkgs, src-redismodules-v0_1_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redismodules-v0_1_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-redismodules-v0_1_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}