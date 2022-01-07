{
  description = ''
    Implementation of Unix crypt with support for Crypt-MD5, Crypt-SHA256 and Crypt-SHA512
  '';
  inputs.src-nimcrypt.url = "https://github.com/napalu/nimcrypt";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
