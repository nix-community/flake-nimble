{
  description = ''
    An in-memory SQL database library
  '';
  inputs.src-db_nimternalsql.url = "https://github.com/rehartmann/nimternalsql";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
