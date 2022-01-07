{
  description = ''
    A small wrapper around PortAudio for cross-platform audio IO.
  '';
  inputs.src-nordaudio.url = "https://github.com/Psirus/nordaudio";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
