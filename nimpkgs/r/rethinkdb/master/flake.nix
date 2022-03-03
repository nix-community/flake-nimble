{
  description = ''RethinkDB driver for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-rethinkdb-master.flake = false;
  inputs.src-rethinkdb-master.type = "github";
  inputs.src-rethinkdb-master.owner = "OpenSystemsLab";
  inputs.src-rethinkdb-master.repo = "rethinkdb.nim";
  inputs.src-rethinkdb-master.ref = "refs/heads/master";
  inputs.src-rethinkdb-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."struct".type = "github";
  # inputs."struct".owner = "riinr";
  # inputs."struct".repo = "flake-nimble";
  # inputs."struct".ref = "flake-pinning";
  # inputs."struct".dir = "nimpkgs/s/struct";
  # inputs."struct".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."struct".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."scram".type = "github";
  # inputs."scram".owner = "riinr";
  # inputs."scram".repo = "flake-nimble";
  # inputs."scram".ref = "flake-pinning";
  # inputs."scram".dir = "nimpkgs/s/scram";
  # inputs."scram".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."scram".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-rethinkdb-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rethinkdb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rethinkdb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}