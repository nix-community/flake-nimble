{
  description = ''
    Rain simulation in your terminal
  '';
  inputs.src-rain.url = "https://github.com/OHermesJunior/rain.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
