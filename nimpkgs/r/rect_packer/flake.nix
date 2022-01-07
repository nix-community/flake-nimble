{
  description = ''
    Pack rects into bigger rect
  '';
  inputs.src-rect_packer.url = "https://github.com/yglukhov/rect_packer";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
