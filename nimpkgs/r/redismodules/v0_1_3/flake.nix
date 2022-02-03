{
  description = ''A new awesome nimble package'';
  inputs.src-redismodules-v0_1_3.flake = false;
  inputs.src-redismodules-v0_1_3.type = "github";
  inputs.src-redismodules-v0_1_3.owner = "luisacosta828";
  inputs.src-redismodules-v0_1_3.repo = "redismodules";
  inputs.src-redismodules-v0_1_3.ref = "refs/tags/v0.1.3";
  
  outputs = { self, nixpkgs, src-redismodules-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redismodules-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-redismodules-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}