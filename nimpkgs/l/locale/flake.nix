{
  description = ''
    A simple library for localizing Nim applications.
  '';
  inputs.src-locale.url = "https://github.com/Amrykid/nim-locale/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
