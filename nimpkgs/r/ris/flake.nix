{
  description = ''
    Module for working with RIS citation files
  '';
  inputs.src-ris.url = "https://github.com/achesak/nim-ris";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
