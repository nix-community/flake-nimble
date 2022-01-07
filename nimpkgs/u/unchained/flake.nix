{
  description = ''
    Fully type safe, compile time only units library
  '';
  inputs.src-unchained.url = "https://github.com/SciNim/unchained";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
