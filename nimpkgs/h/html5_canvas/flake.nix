{
  description = ''
    HTML5 Canvas and drawing for the JavaScript backend.
  '';
  inputs.src-html5_canvas.url = "https://gitlab.com/define-private-public/HTML5-Canvas-Nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
