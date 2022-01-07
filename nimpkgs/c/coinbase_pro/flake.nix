{
  description = ''
    Coinbase pro client for Nim
  '';
  inputs.src-coinbase_pro.url = "https://github.com/inv2004/coinbase-pro-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
