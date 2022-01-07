{
  description = ''
    eaiser use of OpenGL and GLSL shaders
  '';
  inputs.src-Phosphor.url = "https://github.com/barcharcraz/Phosphor";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
