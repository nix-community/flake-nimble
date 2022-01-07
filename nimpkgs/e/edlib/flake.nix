{
  description = ''
    Nim wrapper for edlib
  '';
  inputs.src-edlib.url = "https://github.com/bio-nim/nim-edlib";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
