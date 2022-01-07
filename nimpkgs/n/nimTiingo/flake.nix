{
  description = ''
    Tiingo
  '';
  inputs.src-nimTiingo.url = "https://github.com/rolandgg/nimTiingo";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
