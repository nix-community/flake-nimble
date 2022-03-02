{
  description = ''An efficient packet parser for MySQL Client/Server Protocol. Help you to write Mysql communication in either BLOCKIONG-IO or NON-BLOCKING-IO.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."mysqlparser-master".type = "github";
  inputs."mysqlparser-master".owner = "riinr";
  inputs."mysqlparser-master".repo = "flake-nimble";
  inputs."mysqlparser-master".ref = "flake-pinning";
  inputs."mysqlparser-master".dir = "nimpkgs/m/mysqlparser/master";
  inputs."mysqlparser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mysqlparser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mysqlparser-0_2_0".type = "github";
  inputs."mysqlparser-0_2_0".owner = "riinr";
  inputs."mysqlparser-0_2_0".repo = "flake-nimble";
  inputs."mysqlparser-0_2_0".ref = "flake-pinning";
  inputs."mysqlparser-0_2_0".dir = "nimpkgs/m/mysqlparser/0_2_0";
  inputs."mysqlparser-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mysqlparser-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}