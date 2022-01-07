{
  description = ''
    A high-level GLFW 3 wrapper
  '';
  inputs.src-glfw.url = "https://github.com/johnnovak/nim-glfw";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
