{
  description = ''
    Hash Library for Nim
  '';
  inputs.src-hashlib.url = "https://github.com/khchen/hashlib";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
