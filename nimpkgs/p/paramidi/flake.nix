{
  description = ''
    A library for making MIDI music
  '';
  inputs.src-paramidi.url = "https://github.com/paranim/paramidi";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
