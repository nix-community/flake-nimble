{
  description = ''
    Accurate summation functions
  '';
  inputs.src-sums.url = "https://github.com/planetis-m/sums";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
