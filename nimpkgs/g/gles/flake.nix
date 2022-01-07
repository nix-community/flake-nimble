{
  description = ''
    Bindings for OpenGL ES, the embedded 3D graphics library.
  '';
  inputs.src-gles.url = "https://github.com/nimious/gles.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
