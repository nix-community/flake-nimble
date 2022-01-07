{
  description = ''
    extension modules for Nim's 'db_*' modules
  '';
  inputs.src-ndbex.url = "https://github.com/Senketsu/nim-db-ex";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
