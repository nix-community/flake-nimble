{
  description = ''
    libsodium wrapper
  '';
  inputs.src-libsodium.url = "https://github.com/FedericoCeratto/nim-libsodium";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
