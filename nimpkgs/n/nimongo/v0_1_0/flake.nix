{
  description = ''MongoDB driver in pure Nim language with synchronous and asynchronous I/O support'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimongo-v0_1_0.flake = false;
  inputs.src-nimongo-v0_1_0.type = "github";
  inputs.src-nimongo-v0_1_0.owner = "SSPkrolik";
  inputs.src-nimongo-v0_1_0.repo = "nimongo";
  inputs.src-nimongo-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."scram".type = "github";
  inputs."scram".owner = "riinr";
  inputs."scram".repo = "flake-nimble";
  inputs."scram".ref = "flake-pinning";
  inputs."scram".dir = "nimpkgs/s/scram";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimongo-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimongo-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimongo-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}