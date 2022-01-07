{
  description = ''
    Nim port of a simple 2D physics engine
  '';
  inputs.src-impulse_engine.url = "https://github.com/matkuki/Nim-Impulse-Engine";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
