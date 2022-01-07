{
  description = ''
    Cross-platform sound mixer library
  '';
  inputs.src-sound.url = "https://github.com/yglukhov/sound.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
