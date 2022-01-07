{
  description = ''
    Engine-agnostic library for computing 2D raycasted lights
  '';
  inputs.src-delight.url = "https://github.com/liquid600pgm/delight";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
