{
  description = ''A new awesome nimble package'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-redismodules-v0_1_11.flake = false;
  inputs.src-redismodules-v0_1_11.type = "github";
  inputs.src-redismodules-v0_1_11.owner = "luisacosta828";
  inputs.src-redismodules-v0_1_11.repo = "redismodules";
  inputs.src-redismodules-v0_1_11.ref = "refs/tags/v0.1.11";
  inputs.src-redismodules-v0_1_11.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-redismodules-v0_1_11, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redismodules-v0_1_11;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-redismodules-v0_1_11"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}