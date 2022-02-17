{
  description = ''RethinkDB driver for Nim'';
  inputs.src-rethinkdb-0_2_4.flake = false;
  inputs.src-rethinkdb-0_2_4.type = "github";
  inputs.src-rethinkdb-0_2_4.owner = "OpenSystemsLab";
  inputs.src-rethinkdb-0_2_4.repo = "rethinkdb.nim";
  inputs.src-rethinkdb-0_2_4.ref = "refs/tags/0.2.4";
  
  
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

  outputs = { self, nixpkgs, src-rethinkdb-0_2_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rethinkdb-0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rethinkdb-0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}