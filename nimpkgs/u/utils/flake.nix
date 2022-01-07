{
  description = ''
    Collection of string, parsing, pointer, ... utilities.
  '';
  inputs.src-utils.url = "https://github.com/nim-appkit/utils";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
