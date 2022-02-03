{
  description = ''ClickHouse Nim interface'';
  inputs.src-db_clickhouse-master.flake = false;
  inputs.src-db_clickhouse-master.type = "github";
  inputs.src-db_clickhouse-master.owner = "leonardoce";
  inputs.src-db_clickhouse-master.repo = "nim-clickhouse";
  inputs.src-db_clickhouse-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-db_clickhouse-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-db_clickhouse-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-db_clickhouse-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}