{
  description = ''
    wrapper for the GNU multiple precision arithmetic library (GMP)
  '';
  inputs.src-gmp.url = "https://github.com/subsetpark/nim-gmp";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
