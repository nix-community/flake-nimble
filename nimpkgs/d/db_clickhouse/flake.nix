{
  description = ''ClickHouse Nim interface'';
  inputs."db_clickhouse-master".url = "path:./master";
  inputs."db_clickhouse-v0_1_0".url = "path:./v0_1_0";
  inputs."db_clickhouse-v0_2_0".url = "path:./v0_2_0";
  inputs."db_clickhouse-v0_3_0".url = "path:./v0_3_0";
  inputs."db_clickhouse-v0_4_0".url = "path:./v0_4_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}