{
  description = ''Pure Nim asyncronous driver for Redis DB'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-asyncredis-v0_8_2.flake = false;
  inputs.src-asyncredis-v0_8_2.type = "github";
  inputs.src-asyncredis-v0_8_2.owner = "Q-Master";
  inputs.src-asyncredis-v0_8_2.repo = "redis.nim";
  inputs.src-asyncredis-v0_8_2.ref = "refs/tags/v0.8.2";
  inputs.src-asyncredis-v0_8_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."networkutils".type = "github";
  # inputs."networkutils".owner = "riinr";
  # inputs."networkutils".repo = "flake-nimble";
  # inputs."networkutils".ref = "flake-pinning";
  # inputs."networkutils".dir = "nimpkgs/n/networkutils";
  # inputs."networkutils".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."networkutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-asyncredis-v0_8_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asyncredis-v0_8_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-asyncredis-v0_8_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}