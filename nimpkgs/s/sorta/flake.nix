{
  description = ''
    Sorted Tables for Nim, based on B-Trees
  '';
  inputs.src-sorta.url = "https://github.com/narimiran/sorta";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
