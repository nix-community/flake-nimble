{
  description = ''
    Read metadata from jpeg and tiff images.
  '';
  inputs.src-metar.url = "https://github.com/flenniken/metar";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
