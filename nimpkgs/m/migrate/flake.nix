{
  description = ''
    A simple database migration utility for Nim.
  '';
  inputs.src-migrate.url = "https://github.com/euantorano/migrate.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
