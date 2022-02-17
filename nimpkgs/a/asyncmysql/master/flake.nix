{
  description = ''Asynchronous MySQL connector written in pure Nim'';
  inputs.src-asyncmysql-master.flake = false;
  inputs.src-asyncmysql-master.type = "github";
  inputs.src-asyncmysql-master.owner = "tulayang";
  inputs.src-asyncmysql-master.repo = "asyncmysql";
  inputs.src-asyncmysql-master.ref = "refs/heads/master";
  
  
  inputs."mysqlparser".type = "github";
  inputs."mysqlparser".owner = "riinr";
  inputs."mysqlparser".repo = "flake-nimble";
  inputs."mysqlparser".ref = "flake-pinning";
  inputs."mysqlparser".dir = "nimpkgs/m/mysqlparser";

  outputs = { self, nixpkgs, src-asyncmysql-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asyncmysql-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-asyncmysql-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}