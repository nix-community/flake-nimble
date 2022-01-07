{
  description = ''
    nimvisa is C wrapper for NI-VISA instrument control library
  '';
  inputs.src-nimvisa.url = "https://github.com/leeooox/nimvisa";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
