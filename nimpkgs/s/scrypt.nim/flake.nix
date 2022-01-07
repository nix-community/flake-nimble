{
  description = ''
    Binding and utilities for scrypt
  '';
  inputs.src-scrypt.nim.url = "https://bitbucket.org/BitPuffin/scrypt.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
