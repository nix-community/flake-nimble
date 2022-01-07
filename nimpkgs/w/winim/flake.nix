{
  description = ''
    Nim's Windows API and COM Library
  '';
  inputs.src-winim.url = "https://github.com/khchen/winim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
