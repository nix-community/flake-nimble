{
  description = ''
    The Nim GUI/2D framework based on OpenGL and SDL2.
  '';
  inputs.src-nodesnim.url = "https://github.com/Ethosa/nodesnim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
