{
  description = ''
    High-level and low-level wrapper for OpenGL
  '';
  inputs.src-opengl.url = "https://github.com/nim-lang/opengl";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
