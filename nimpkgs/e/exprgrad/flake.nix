{
  description = ''
    An experimental deep learning framework
  '';
  inputs.src-exprgrad.url = "https://github.com/can-lehmann/exprgrad";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
