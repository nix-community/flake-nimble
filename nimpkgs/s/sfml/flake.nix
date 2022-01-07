{
  description = ''
    High level OpenGL-based Game Library
  '';
  inputs.src-sfml.url = "https://github.com/fowlmouth/nimrod-sfml/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
