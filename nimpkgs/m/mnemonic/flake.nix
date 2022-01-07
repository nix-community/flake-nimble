{
  description = ''
    Create memorable sentences from byte sequences.
  '';
  inputs.src-mnemonic.url = "https://github.com/markspanbroek/mnemonic";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
