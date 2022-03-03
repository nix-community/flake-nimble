{
  description = ''Asynchronous MySQL connector written in pure Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-asyncmysql-master.flake = false;
  inputs.src-asyncmysql-master.type = "github";
  inputs.src-asyncmysql-master.owner = "tulayang";
  inputs.src-asyncmysql-master.repo = "asyncmysql";
  inputs.src-asyncmysql-master.ref = "refs/heads/master";
  inputs.src-asyncmysql-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."mysqlparser".type = "github";
  # inputs."mysqlparser".owner = "riinr";
  # inputs."mysqlparser".repo = "flake-nimble";
  # inputs."mysqlparser".ref = "flake-pinning";
  # inputs."mysqlparser".dir = "nimpkgs/m/mysqlparser";
  # inputs."mysqlparser".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."mysqlparser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-asyncmysql-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asyncmysql-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-asyncmysql-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}