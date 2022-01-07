{
  description = ''
    Figma based UI library for nim, with HTML and OpenGL backends.
  '';
  inputs.src-fidget.url = "https://github.com/treeform/fidget";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
