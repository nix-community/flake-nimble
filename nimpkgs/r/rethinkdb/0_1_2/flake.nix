{
  description = ''RethinkDB driver for Nim'';
  inputs.src-rethinkdb-0_1_2.flake = false;
  inputs.src-rethinkdb-0_1_2.type = "github";
  inputs.src-rethinkdb-0_1_2.owner = "OpenSystemsLab";
  inputs.src-rethinkdb-0_1_2.repo = "rethinkdb.nim";
  inputs.src-rethinkdb-0_1_2.ref = "refs/tags/0.1.2";
  
  
  inputs."struct".type = "github";
  inputs."struct".owner = "riinr";
  inputs."struct".repo = "flake-nimble";
  inputs."struct".ref = "flake-pinning";
  inputs."struct".dir = "nimpkgs/s/struct";

  outputs = { self, nixpkgs, src-rethinkdb-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rethinkdb-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rethinkdb-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}