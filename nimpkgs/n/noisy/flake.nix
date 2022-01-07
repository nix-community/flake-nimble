{
  description = ''
    SIMD-accelerated noise generation (Simplex, Perlin).
  '';
  inputs.src-noisy.url = "https://github.com/guzba/noisy";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
