{
  description = ''
    Bindings to the FFTW library
  '';
  inputs.src-fftw3.url = "https://github.com/SciNim/nimfftw3";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
