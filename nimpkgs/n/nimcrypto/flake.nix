{
  description = ''
    Nim cryptographic library
  '';
  inputs.src-nimcrypto.url = "https://github.com/cheatfate/nimcrypto";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
