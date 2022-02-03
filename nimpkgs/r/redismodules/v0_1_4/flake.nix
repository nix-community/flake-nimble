{
  description = ''A new awesome nimble package'';
  inputs.src-redismodules-v0_1_4.flake = false;
  inputs.src-redismodules-v0_1_4.type = "github";
  inputs.src-redismodules-v0_1_4.owner = "luisacosta828";
  inputs.src-redismodules-v0_1_4.repo = "redismodules";
  inputs.src-redismodules-v0_1_4.ref = "refs/tags/v0.1.4";
  
  outputs = { self, nixpkgs, src-redismodules-v0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redismodules-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-redismodules-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}