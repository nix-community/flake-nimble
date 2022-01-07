{
  description = ''
    Nim module for generating URL identifiers for Tiny URL and bit.ly-like URLs
  '';
  inputs.src-shorturl.url = "https://github.com/achesak/nim-shorturl";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
