{
  description = ''
    Obsolete - please use oculus instead!
  '';
  inputs.src-io-oculus.url = "https://github.com/nimious/io-oculus.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
