{
  description = ''
    Bindings to BearSSL library
  '';
  inputs.src-bearssl.url = "https://github.com/status-im/nim-bearssl";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
