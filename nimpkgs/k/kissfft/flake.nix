{
  description = ''
    Nim binding for KissFFT Fast Fourier Transform library
  '';
  inputs.src-kissfft.url = "https://github.com/m13253/nim-kissfft";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
