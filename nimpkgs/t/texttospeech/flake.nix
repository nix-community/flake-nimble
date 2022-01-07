{
  description = ''
    A client for the Google Cloud Text to Speech API.
  '';
  inputs.src-texttospeech.url = "https://github.com/dom96/texttospeech";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
