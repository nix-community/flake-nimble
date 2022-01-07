{
  description = ''
    Module for working with EPUB e-book files
  '';
  inputs.src-epub.url = "https://github.com/achesak/nim-epub";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
