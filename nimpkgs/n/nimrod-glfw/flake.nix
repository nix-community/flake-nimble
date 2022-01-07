{
  description = ''
    Nim bindings for GLFW library.
  '';
  inputs.src-nimrod-glfw.url = "https://github.com/rafaelvasco/nimrod-glfw/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
