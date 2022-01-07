{
  description = ''
    Base32 library for Nim
  '';
  inputs.src-base32.url = "https://github.com/OpenSystemsLab/base32.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
