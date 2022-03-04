{
  description = ''Pure Nim asyncronous driver for Redis DB'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-asyncredis-master.flake = false;
  inputs.src-asyncredis-master.type = "github";
  inputs.src-asyncredis-master.owner = "Q-Master";
  inputs.src-asyncredis-master.repo = "redis.nim";
  inputs.src-asyncredis-master.ref = "refs/heads/master";
  inputs.src-asyncredis-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."ptr_math".type = "github";
  inputs."ptr_math".owner = "riinr";
  inputs."ptr_math".repo = "flake-nimble";
  inputs."ptr_math".ref = "flake-pinning";
  inputs."ptr_math".dir = "nimpkgs/p/ptr_math";
  inputs."ptr_math".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ptr_math".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-asyncredis-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asyncredis-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-asyncredis-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}