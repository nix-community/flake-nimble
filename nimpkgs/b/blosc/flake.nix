{
  description = ''
    Bit Shuffling Block Compressor (C-Blosc)
  '';
  inputs.src-blosc.url = "https://github.com/Vindaar/nblosc";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
