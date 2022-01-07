{
  description = ''
    Updated version of tor.nim from https://github.com/FedericoCeratto/nim-tor
  '';
  inputs.src-torim.url = "https://github.com/KittyTechnoProgrammer/torim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
