{
  description = ''
    Nim wrapper for the C NanoVG antialiased vector graphics rendering library for OpenGL
  '';
  inputs.src-nanovg.url = "https://github.com/johnnovak/nim-nanovg";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
