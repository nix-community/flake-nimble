{
  description = ''Asynchronous MySQL connector written in pure Nim'';
  inputs.src-asyncmysql-0_4_3.flake = false;
  inputs.src-asyncmysql-0_4_3.type = "github";
  inputs.src-asyncmysql-0_4_3.owner = "tulayang";
  inputs.src-asyncmysql-0_4_3.repo = "asyncmysql";
  inputs.src-asyncmysql-0_4_3.ref = "refs/tags/0.4.3";
  
  
  inputs."mysqlparser".url = "path:../../../m/mysqlparser";
  inputs."mysqlparser".type = "github";
  inputs."mysqlparser".owner = "riinr";
  inputs."mysqlparser".repo = "flake-nimble";
  inputs."mysqlparser".ref = "flake-pinning";
  inputs."mysqlparser".dir = "nimpkgs/m/mysqlparser";

  outputs = { self, nixpkgs, src-asyncmysql-0_4_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asyncmysql-0_4_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-asyncmysql-0_4_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}