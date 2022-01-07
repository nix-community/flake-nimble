{
  description = ''
    Fonts, Typesetting and Rasterization.
  '';
  inputs.src-typography.url = "https://github.com/treeform/typography";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
