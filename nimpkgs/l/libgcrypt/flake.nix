{
  description = ''
    libgcrypt wrapper
  '';
  inputs.src-libgcrypt.url = "https://github.com/FedericoCeratto/nim-libgcrypt";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
