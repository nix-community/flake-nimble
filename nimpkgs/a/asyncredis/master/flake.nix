{
  description = ''Pure Nim asyncronous driver for Redis DB'';
  inputs.src-asyncredis-master.flake = false;
  inputs.src-asyncredis-master.type = "github";
  inputs.src-asyncredis-master.owner = "Q-Master";
  inputs.src-asyncredis-master.repo = "redis.nim";
  inputs.src-asyncredis-master.ref = "refs/heads/master";
  
  
  inputs."ptr_math".type = "github";
  inputs."ptr_math".owner = "riinr";
  inputs."ptr_math".repo = "flake-nimble";
  inputs."ptr_math".ref = "flake-pinning";
  inputs."ptr_math".dir = "nimpkgs/p/ptr_math";

  outputs = { self, nixpkgs, src-asyncredis-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asyncredis-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-asyncredis-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}