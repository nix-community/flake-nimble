{
  description = ''
    Hex clock made in SDL and Nim
  '';
  inputs.src-hexclock.url = "https://github.com/RainbowAsteroids/hexclock";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
