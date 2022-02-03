{
  description = ''RethinkDB driver for Nim'';
  inputs.src-rethinkdb-0_2_3_3.flake = false;
  inputs.src-rethinkdb-0_2_3_3.type = "github";
  inputs.src-rethinkdb-0_2_3_3.owner = "OpenSystemsLab";
  inputs.src-rethinkdb-0_2_3_3.repo = "rethinkdb.nim";
  inputs.src-rethinkdb-0_2_3_3.ref = "refs/tags/0.2.3.3";
  
  
  inputs."struct".url = "path:../../../s/struct";
  inputs."struct".type = "github";
  inputs."struct".owner = "riinr";
  inputs."struct".repo = "flake-nimble";
  inputs."struct".ref = "flake-pinning";
  inputs."struct".dir = "nimpkgs/s/struct";

  
  inputs."scram".url = "path:../../../s/scram";
  inputs."scram".type = "github";
  inputs."scram".owner = "riinr";
  inputs."scram".repo = "flake-nimble";
  inputs."scram".ref = "flake-pinning";
  inputs."scram".dir = "nimpkgs/s/scram";

  outputs = { self, nixpkgs, src-rethinkdb-0_2_3_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rethinkdb-0_2_3_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rethinkdb-0_2_3_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}