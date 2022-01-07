{
  description = ''
    Obsolete - please use myo instead!
  '';
  inputs.src-io-myo.url = "https://github.com/nimious/io-myo.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
