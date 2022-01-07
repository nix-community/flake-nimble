{
  description = ''
    Nim bindings for mozilla's DeepSpeech model.
  '';
  inputs.src-deepspeech.url = "https://gitlab.com/eagledot/nim-deepspeech";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
