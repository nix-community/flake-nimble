{
  description = ''
    rect is a command to crop/paste rectangle text.
  '';
  inputs.src-rect.url = "https://github.com/jiro4989/rect";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
