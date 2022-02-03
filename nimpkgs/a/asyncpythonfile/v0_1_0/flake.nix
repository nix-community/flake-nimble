{
  description = ''High level, asynchronous file API mimicking Python's file interface.'';
  inputs.src-asyncpythonfile-v0_1_0.flake = false;
  inputs.src-asyncpythonfile-v0_1_0.type = "github";
  inputs.src-asyncpythonfile-v0_1_0.owner = "fallingduck";
  inputs.src-asyncpythonfile-v0_1_0.repo = "asyncpythonfile-nim";
  inputs.src-asyncpythonfile-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-asyncpythonfile-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asyncpythonfile-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-asyncpythonfile-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}