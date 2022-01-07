{
  description = ''
    Writing a 2D Platform Game in Nim with SDL2
  '';
  inputs.src-platformer.url = "https://github.com/def-/nim-platformer";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
