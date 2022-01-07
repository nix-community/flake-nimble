{
  description = ''
    Wrapper for OpenSSL's EVP interface
  '';
  inputs.src-openssl_evp.url = "https://github.com/cowboy-coders/nim-openssl-evp";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
