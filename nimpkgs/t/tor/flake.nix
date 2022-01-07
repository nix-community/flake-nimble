{
  description = ''
    Tor helper library
  '';
  inputs.src-tor.url = "https://github.com/FedericoCeratto/nim-tor";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
