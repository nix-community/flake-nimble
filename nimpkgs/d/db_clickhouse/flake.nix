{
  description = ''
    ClickHouse Nim interface
  '';
  inputs.src-db_clickhouse.url = "https://github.com/leonardoce/nim-clickhouse";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
