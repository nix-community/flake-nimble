{
  description = ''
    Wrapper of the libtcod library for the Nim language.
  '';
  inputs.src-libtcod_nim.url = "https://github.com/Vladar4/libtcod_nim/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
