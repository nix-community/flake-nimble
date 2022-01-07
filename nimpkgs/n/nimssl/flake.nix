{
  description = ''
    OpenSSL wrapper for Nim
  '';
  inputs.src-nimssl.url = "https://github.com/genotrance/nimssl";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
