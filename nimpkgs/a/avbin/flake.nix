{
  description = ''
    Wrapper of the AVbin library for the Nim language.
  '';
  inputs.src-avbin.url = "https://github.com/Vladar4/avbin";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
