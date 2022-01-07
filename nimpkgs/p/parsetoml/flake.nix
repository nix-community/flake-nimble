{
  description = ''
    Library for parsing TOML files.
  '';
  inputs.src-parsetoml.url = "https://github.com/NimParsers/parsetoml.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
