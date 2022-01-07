{
  description = ''
    Nim-based DSL allowing to generate SVG files and GIF animations.
  '';
  inputs.src-nimsvg.url = "https://github.com/bluenote10/NimSvg";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
