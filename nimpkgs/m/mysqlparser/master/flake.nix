{
  description = ''An efficient packet parser for MySQL Client/Server Protocol. Help you to write Mysql communication in either BLOCKIONG-IO or NON-BLOCKING-IO.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-mysqlparser-master.flake = false;
  inputs.src-mysqlparser-master.type = "github";
  inputs.src-mysqlparser-master.owner = "tulayang";
  inputs.src-mysqlparser-master.repo = "mysqlparser";
  inputs.src-mysqlparser-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mysqlparser-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mysqlparser-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mysqlparser-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}