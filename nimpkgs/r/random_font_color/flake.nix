{
  description = ''
    Random curated Fonts and pastel Colors for your UI/UX design, design for non-designers.
  '';
  inputs.src-random_font_color.url = "https://github.com/juancarlospaco/nim-random-font-color";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
