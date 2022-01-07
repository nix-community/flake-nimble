{
  description = ''
    fastText wrapper for Nim
  '';
  inputs.src-nimfastText.url = "https://github.com/genotrance/nimfastText";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
