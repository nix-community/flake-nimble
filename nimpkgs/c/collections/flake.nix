{
  description = ''
    Various collections and utilities
  '';
  inputs.src-collections.url = "https://github.com/zielmicha/collections.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
