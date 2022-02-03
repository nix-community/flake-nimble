{
  description = ''Asynchronous PostgreSQL driver for Nim Language.'';
  inputs.src-asyncpg-master.flake = false;
  inputs.src-asyncpg-master.type = "github";
  inputs.src-asyncpg-master.owner = "cheatfate";
  inputs.src-asyncpg-master.repo = "asyncpg";
  inputs.src-asyncpg-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-asyncpg-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asyncpg-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-asyncpg-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}