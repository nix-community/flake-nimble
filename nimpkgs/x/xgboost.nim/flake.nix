{
  description = ''
    Nim wrapper of libxgboost
  '';
  inputs.src-xgboost.nim.url = "https://github.com/jackhftang/xgboost.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
