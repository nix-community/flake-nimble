{
  description = ''
    Color gradients generation
  '';
  inputs.src-gradient.url = "https://github.com/luminosoda/gradient";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
