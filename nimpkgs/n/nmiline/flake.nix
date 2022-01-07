{
  description = ''
    Plotting tool using NiGui
  '';
  inputs.src-nmiline.url = "https://github.com/mzteruru52/NmiLine";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
