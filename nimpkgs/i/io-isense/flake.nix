{
  description = ''
    Obsolete - please use isense instead!
  '';
  inputs.src-io-isense.url = "https://github.com/nimious/io-isense.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
