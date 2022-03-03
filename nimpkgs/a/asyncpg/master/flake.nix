{
  description = ''Asynchronous PostgreSQL driver for Nim Language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-asyncpg-master.flake = false;
  inputs.src-asyncpg-master.type = "github";
  inputs.src-asyncpg-master.owner = "cheatfate";
  inputs.src-asyncpg-master.repo = "asyncpg";
  inputs.src-asyncpg-master.ref = "refs/heads/master";
  inputs.src-asyncpg-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-asyncpg-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asyncpg-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-asyncpg-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}