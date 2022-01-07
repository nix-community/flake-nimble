{
  description = ''
    Bass wrapper for Nim
  '';
  inputs.src-nimbass.url = "https://github.com/genotrance/nimbass";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
