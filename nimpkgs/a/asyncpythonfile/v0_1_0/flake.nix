{
  description = ''High level, asynchronous file API mimicking Python's file interface.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-asyncpythonfile-v0_1_0.flake = false;
  inputs.src-asyncpythonfile-v0_1_0.type = "github";
  inputs.src-asyncpythonfile-v0_1_0.owner = "fallingduck";
  inputs.src-asyncpythonfile-v0_1_0.repo = "asyncpythonfile-nim";
  inputs.src-asyncpythonfile-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-asyncpythonfile-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-asyncpythonfile-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asyncpythonfile-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-asyncpythonfile-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}