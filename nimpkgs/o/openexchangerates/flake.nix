{
  description = ''
    OpenExchangeRates API Client for Nim. Works with/without SSL. Partially works with/without Free API Key.
  '';
  inputs.src-openexchangerates.url = "https://github.com/juancarlospaco/nim-openexchangerates";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
