{
  description = ''
    Library for reading KeePass files and decrypt the passwords within it
  '';
  inputs.src-libkeepass.url = "https://github.com/PMunch/libkeepass";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
