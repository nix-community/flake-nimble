{
  description = ''Asynchronous MySQL connector written in pure Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-asyncmysql-0_4_3.flake = false;
  inputs.src-asyncmysql-0_4_3.type = "github";
  inputs.src-asyncmysql-0_4_3.owner = "tulayang";
  inputs.src-asyncmysql-0_4_3.repo = "asyncmysql";
  inputs.src-asyncmysql-0_4_3.ref = "refs/tags/0.4.3";
  inputs.src-asyncmysql-0_4_3.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."mysqlparser".type = "github";
  # inputs."mysqlparser".owner = "riinr";
  # inputs."mysqlparser".repo = "flake-nimble";
  # inputs."mysqlparser".ref = "flake-pinning";
  # inputs."mysqlparser".dir = "nimpkgs/m/mysqlparser";
  # inputs."mysqlparser".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."mysqlparser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-asyncmysql-0_4_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asyncmysql-0_4_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-asyncmysql-0_4_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}