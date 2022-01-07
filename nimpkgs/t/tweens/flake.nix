{
  description = ''
    Basic tweening library for Nim
  '';
  inputs.src-tweens.url = "https://github.com/RainbowAsteroids/tweens";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
