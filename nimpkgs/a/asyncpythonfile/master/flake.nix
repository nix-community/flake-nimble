{
  description = ''High level, asynchronous file API mimicking Python's file interface.'';
  inputs.src-asyncpythonfile-master.flake = false;
  inputs.src-asyncpythonfile-master.type = "github";
  inputs.src-asyncpythonfile-master.owner = "fallingduck";
  inputs.src-asyncpythonfile-master.repo = "asyncpythonfile-nim";
  inputs.src-asyncpythonfile-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-asyncpythonfile-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asyncpythonfile-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-asyncpythonfile-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}