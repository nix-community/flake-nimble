{
  description = ''RethinkDB driver for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-rethinkdb-0_2_6.flake = false;
  inputs.src-rethinkdb-0_2_6.type = "github";
  inputs.src-rethinkdb-0_2_6.owner = "OpenSystemsLab";
  inputs.src-rethinkdb-0_2_6.repo = "rethinkdb.nim";
  inputs.src-rethinkdb-0_2_6.ref = "refs/tags/0.2.6";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-rethinkdb-0_2_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rethinkdb-0_2_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rethinkdb-0_2_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}