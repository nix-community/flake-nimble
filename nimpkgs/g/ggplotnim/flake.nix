{
  description = ''
    A port of ggplot2 for Nim
  '';
  inputs.src-ggplotnim.url = "https://github.com/Vindaar/ggplotnim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
