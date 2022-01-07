{
  description = ''
    Nim bindings for the WEBRTC VAD(voice actitvity Detection)
  '';
  inputs.src-webrtcvad.url = "https://gitlab.com/eagledot/nim-webrtcvad";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
