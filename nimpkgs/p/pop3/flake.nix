{
  description = ''
    POP3 client library
  '';
  inputs.src-pop3.url = "https://github.com/FedericoCeratto/nim-pop3";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
