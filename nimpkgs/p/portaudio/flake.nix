{
  description = ''
    Binding to portaudio
  '';
  inputs.src-portaudio.url = "https://bitbucket.org/BitPuffin/nim-portaudio";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
