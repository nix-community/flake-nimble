{
  description = ''MongoDB driver in pure Nim language with synchronous and asynchronous I/O support'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimongo-v0_2_0.flake = false;
  inputs.src-nimongo-v0_2_0.type = "github";
  inputs.src-nimongo-v0_2_0.owner = "SSPkrolik";
  inputs.src-nimongo-v0_2_0.repo = "nimongo";
  inputs.src-nimongo-v0_2_0.ref = "refs/tags/v0.2.0";
  inputs.src-nimongo-v0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."scram".type = "github";
  # inputs."scram".owner = "riinr";
  # inputs."scram".repo = "flake-nimble";
  # inputs."scram".ref = "flake-pinning";
  # inputs."scram".dir = "nimpkgs/s/scram";
  # inputs."scram".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."scram".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimongo-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimongo-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimongo-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}