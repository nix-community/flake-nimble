{
  description = ''
    GnuTLS wrapper
  '';
  inputs.src-gnutls.url = "https://github.com/FedericoCeratto/nim-gnutls";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
