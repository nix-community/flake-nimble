{
  description = ''
    Obsolete - please use gles instead!
  '';
  inputs.src-io-gles.url = "https://github.com/nimious/io-gles.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
