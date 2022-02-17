{
  description = ''RethinkDB driver for Nim'';
  inputs.src-rethinkdb-master.flake = false;
  inputs.src-rethinkdb-master.type = "github";
  inputs.src-rethinkdb-master.owner = "OpenSystemsLab";
  inputs.src-rethinkdb-master.repo = "rethinkdb.nim";
  inputs.src-rethinkdb-master.ref = "refs/heads/master";
  
  
  inputs."struct".type = "github";
  inputs."struct".owner = "riinr";
  inputs."struct".repo = "flake-nimble";
  inputs."struct".ref = "flake-pinning";
  inputs."struct".dir = "nimpkgs/s/struct";

  
  inputs."scram".type = "github";
  inputs."scram".owner = "riinr";
  inputs."scram".repo = "flake-nimble";
  inputs."scram".ref = "flake-pinning";
  inputs."scram".dir = "nimpkgs/s/scram";

  outputs = { self, nixpkgs, src-rethinkdb-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rethinkdb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rethinkdb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}