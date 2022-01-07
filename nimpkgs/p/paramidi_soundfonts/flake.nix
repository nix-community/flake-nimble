{
  description = ''
    Soundfonts for paramidi
  '';
  inputs.src-paramidi_soundfonts.url = "https://github.com/paranim/paramidi_soundfonts";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
