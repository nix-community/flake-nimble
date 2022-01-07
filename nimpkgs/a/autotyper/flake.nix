{
  description = ''
    Keyboard typing emulator
  '';
  inputs.src-autotyper.url = "https://github.com/kijowski/autotyper";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
