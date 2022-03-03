{
  description = ''ClickHouse Nim interface'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."db_clickhouse-master".type = "github";
  inputs."db_clickhouse-master".owner = "riinr";
  inputs."db_clickhouse-master".repo = "flake-nimble";
  inputs."db_clickhouse-master".ref = "flake-pinning";
  inputs."db_clickhouse-master".dir = "nimpkgs/d/db_clickhouse/master";
  inputs."db_clickhouse-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_clickhouse-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."db_clickhouse-v0_1_0".type = "github";
  inputs."db_clickhouse-v0_1_0".owner = "riinr";
  inputs."db_clickhouse-v0_1_0".repo = "flake-nimble";
  inputs."db_clickhouse-v0_1_0".ref = "flake-pinning";
  inputs."db_clickhouse-v0_1_0".dir = "nimpkgs/d/db_clickhouse/v0_1_0";
  inputs."db_clickhouse-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_clickhouse-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."db_clickhouse-v0_2_0".type = "github";
  inputs."db_clickhouse-v0_2_0".owner = "riinr";
  inputs."db_clickhouse-v0_2_0".repo = "flake-nimble";
  inputs."db_clickhouse-v0_2_0".ref = "flake-pinning";
  inputs."db_clickhouse-v0_2_0".dir = "nimpkgs/d/db_clickhouse/v0_2_0";
  inputs."db_clickhouse-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_clickhouse-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."db_clickhouse-v0_3_0".type = "github";
  inputs."db_clickhouse-v0_3_0".owner = "riinr";
  inputs."db_clickhouse-v0_3_0".repo = "flake-nimble";
  inputs."db_clickhouse-v0_3_0".ref = "flake-pinning";
  inputs."db_clickhouse-v0_3_0".dir = "nimpkgs/d/db_clickhouse/v0_3_0";
  inputs."db_clickhouse-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_clickhouse-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."db_clickhouse-v0_4_0".type = "github";
  inputs."db_clickhouse-v0_4_0".owner = "riinr";
  inputs."db_clickhouse-v0_4_0".repo = "flake-nimble";
  inputs."db_clickhouse-v0_4_0".ref = "flake-pinning";
  inputs."db_clickhouse-v0_4_0".dir = "nimpkgs/d/db_clickhouse/v0_4_0";
  inputs."db_clickhouse-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_clickhouse-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}