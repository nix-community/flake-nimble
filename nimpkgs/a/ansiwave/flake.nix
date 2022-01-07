{
  description = ''
    ANSI art + MIDI music editor
  '';
  inputs.src-ansiwave.url = "https://github.com/ansiwave/ansiwave";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
