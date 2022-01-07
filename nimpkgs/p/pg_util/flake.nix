{
  description = ''
    Postgres utility functions
  '';
  inputs.src-pg_util.url = "https://github.com/hiteshjasani/nim-pg-util.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
