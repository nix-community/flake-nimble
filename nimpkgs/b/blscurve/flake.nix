{
  description = ''
    Nim implementation of  Barreto-Lynn-Scott (BLS) curve BLS12-381.
  '';
  inputs.src-blscurve.url = "https://github.com/status-im/nim-blscurve";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
