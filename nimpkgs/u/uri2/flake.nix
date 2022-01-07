{
  description = ''
    Nim module for better URI handling
  '';
  inputs.src-uri2.url = "https://github.com/achesak/nim-uri2";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
