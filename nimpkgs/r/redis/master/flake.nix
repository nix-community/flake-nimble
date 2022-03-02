{
  description = ''official redis client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-redis-master.flake = false;
  inputs.src-redis-master.type = "github";
  inputs.src-redis-master.owner = "nim-lang";
  inputs.src-redis-master.repo = "redis";
  inputs.src-redis-master.ref = "refs/heads/master";
  inputs.src-redis-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-redis-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redis-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-redis-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}