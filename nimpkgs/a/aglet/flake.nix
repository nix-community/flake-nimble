{
  description = ''
    A safe, high-level, optimized OpenGL wrapper
  '';
  inputs.src-aglet.url = "https://github.com/liquid600pgm/aglet";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
