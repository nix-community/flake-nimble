{
  description = ''
    Localization package for Nim.
  '';
  inputs.src-loco.url = "https://github.com/moigagoo/loco";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
