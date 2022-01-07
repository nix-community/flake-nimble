{
  description = ''
    A simple RPN calculator
  '';
  inputs.src-ad.url = "https://github.com/subsetpark/ad";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
