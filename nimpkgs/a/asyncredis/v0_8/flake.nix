{
  description = ''Pure Nim asyncronous driver for Redis DB'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-asyncredis-v0_8.flake = false;
  inputs.src-asyncredis-v0_8.type = "github";
  inputs.src-asyncredis-v0_8.owner = "Q-Master";
  inputs.src-asyncredis-v0_8.repo = "redis.nim";
  inputs.src-asyncredis-v0_8.ref = "refs/tags/v0.8";
  
  
  inputs."ptr_math".type = "github";
  inputs."ptr_math".owner = "riinr";
  inputs."ptr_math".repo = "flake-nimble";
  inputs."ptr_math".ref = "flake-pinning";
  inputs."ptr_math".dir = "nimpkgs/p/ptr_math";

  outputs = { self, nixpkgs, flakeNimbleLib, src-asyncredis-v0_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asyncredis-v0_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-asyncredis-v0_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}