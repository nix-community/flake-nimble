{
  description = ''
    Random password and passphrase generator
  '';
  inputs.src-randpw.url = "https://github.com/pdrb/nim-randpw";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
