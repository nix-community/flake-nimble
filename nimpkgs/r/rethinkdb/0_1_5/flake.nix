{
  description = ''RethinkDB driver for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-rethinkdb-0_1_5.flake = false;
  inputs.src-rethinkdb-0_1_5.type = "github";
  inputs.src-rethinkdb-0_1_5.owner = "OpenSystemsLab";
  inputs.src-rethinkdb-0_1_5.repo = "rethinkdb.nim";
  inputs.src-rethinkdb-0_1_5.ref = "refs/tags/0.1.5";
  inputs.src-rethinkdb-0_1_5.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."struct".type = "github";
  # inputs."struct".owner = "riinr";
  # inputs."struct".repo = "flake-nimble";
  # inputs."struct".ref = "flake-pinning";
  # inputs."struct".dir = "nimpkgs/s/struct";
  # inputs."struct".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."struct".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-rethinkdb-0_1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rethinkdb-0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rethinkdb-0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}