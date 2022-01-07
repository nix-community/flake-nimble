{
  description = ''
    Bindings for EGL, the native platform interface for rendering APIs.
  '';
  inputs.src-egl.url = "https://github.com/nimious/egl.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
