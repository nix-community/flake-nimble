{
  description = ''
    A Nim library to access the Binance API.
  '';
  inputs.src-binance.url = "https://github.com/Imperator26/binance";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
