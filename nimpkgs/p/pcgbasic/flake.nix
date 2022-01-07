{
  description = ''
    Permuted Congruential Generator (PCG) Random Number Generation (RNG) for Nim.
  '';
  inputs.src-pcgbasic.url = "https://github.com/rockcavera/pcgbasic";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
