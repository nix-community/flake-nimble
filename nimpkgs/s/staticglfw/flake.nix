{
  description = ''
    Static GLFW for nim
  '';
  inputs.src-staticglfw.url = "https://github.com/treeform/staticglfw";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
