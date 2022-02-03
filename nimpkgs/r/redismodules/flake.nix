{
  description = ''A new awesome nimble package'';
  inputs."redismodules-master".url = "path:./master";
  inputs."redismodules-v0_1_0".url = "path:./v0_1_0";
  inputs."redismodules-v0_1_1".url = "path:./v0_1_1";
  inputs."redismodules-v0_1_10".url = "path:./v0_1_10";
  inputs."redismodules-v0_1_11".url = "path:./v0_1_11";
  inputs."redismodules-v0_1_2".url = "path:./v0_1_2";
  inputs."redismodules-v0_1_3".url = "path:./v0_1_3";
  inputs."redismodules-v0_1_4".url = "path:./v0_1_4";
  inputs."redismodules-v0_1_5".url = "path:./v0_1_5";
  inputs."redismodules-v0_1_6".url = "path:./v0_1_6";
  inputs."redismodules-v0_1_7".url = "path:./v0_1_7";
  inputs."redismodules-v0_1_8".url = "path:./v0_1_8";
  inputs."redismodules-v0_1_9".url = "path:./v0_1_9";
  inputs."redismodules-v0_2_0".url = "path:./v0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}