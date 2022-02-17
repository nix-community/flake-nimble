{
  description = ''Pure Nim asyncronous driver for Redis DB'';
  inputs.src-asyncredis-v0_8_1.flake = false;
  inputs.src-asyncredis-v0_8_1.type = "github";
  inputs.src-asyncredis-v0_8_1.owner = "Q-Master";
  inputs.src-asyncredis-v0_8_1.repo = "redis.nim";
  inputs.src-asyncredis-v0_8_1.ref = "refs/tags/v0.8.1";
  
  
  inputs."https://github.com/q-master/networkutils.nim.git".type = "github";
  inputs."https://github.com/q-master/networkutils.nim.git".owner = "riinr";
  inputs."https://github.com/q-master/networkutils.nim.git".repo = "flake-nimble";
  inputs."https://github.com/q-master/networkutils.nim.git".ref = "flake-pinning";
  inputs."https://github.com/q-master/networkutils.nim.git".dir = "nimpkgs/h/https://github.com/q-master/networkutils.nim.git";

  outputs = { self, nixpkgs, src-asyncredis-v0_8_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asyncredis-v0_8_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-asyncredis-v0_8_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}