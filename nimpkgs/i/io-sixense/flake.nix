{
  description = ''
    Obsolete - please use sixense instead!
  '';
  inputs.src-io-sixense.url = "https://github.com/nimious/io-sixense.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
