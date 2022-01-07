{
  description = ''
    Database schema migration library for Nim language.
  '';
  inputs.src-dbschema.url = "https://github.com/vegansk/dbschema";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
