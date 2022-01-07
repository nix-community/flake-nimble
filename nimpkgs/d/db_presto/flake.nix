{
  description = ''
    prestodb simple connector
  '';
  inputs.src-db_presto.url = "https://github.com/Bennyelg/nimPresto";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
