{
  description = ''
    Library for working with arbitrary values + a map data structure.
  '';
  inputs.src-values.url = "https://github.com/nim-appkit/values";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
