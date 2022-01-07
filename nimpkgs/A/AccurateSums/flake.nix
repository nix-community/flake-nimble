{
  description = ''
    Accurate Floating Point Sums and Products.
  '';
  inputs.src-AccurateSums.url = "https://gitlab.com/lbartoletti/accuratesums";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
