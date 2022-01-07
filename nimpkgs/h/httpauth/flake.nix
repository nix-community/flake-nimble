{
  description = ''
    HTTP Authentication and Authorization
  '';
  inputs.src-httpauth.url = "https://github.com/FedericoCeratto/nim-httpauth";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
