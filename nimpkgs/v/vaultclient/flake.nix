{
  description = ''
    Hashicorp Vault HTTP Client
  '';
  inputs.src-vaultclient.url = "https://github.com/jackhftang/vaultclient.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
