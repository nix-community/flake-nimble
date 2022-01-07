{
  description = ''
    A wrapper for libu2f, a library for FIDO/U2F
  '';
  inputs.src-libu2f.url = "https://github.com/FedericoCeratto/nim-libu2f";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
