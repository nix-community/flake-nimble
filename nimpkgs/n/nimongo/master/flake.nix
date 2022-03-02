{
  description = ''MongoDB driver in pure Nim language with synchronous and asynchronous I/O support'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimongo-master.flake = false;
  inputs.src-nimongo-master.type = "github";
  inputs.src-nimongo-master.owner = "SSPkrolik";
  inputs.src-nimongo-master.repo = "nimongo";
  inputs.src-nimongo-master.ref = "refs/heads/master";
  inputs.src-nimongo-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."scram".type = "github";
  # inputs."scram".owner = "riinr";
  # inputs."scram".repo = "flake-nimble";
  # inputs."scram".ref = "flake-pinning";
  # inputs."scram".dir = "nimpkgs/s/scram";
  # inputs."scram".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."scram".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimongo-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimongo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimongo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}