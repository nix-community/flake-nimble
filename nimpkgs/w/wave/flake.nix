{
  description = ''
    wave is a tiny WAV sound module
  '';
  inputs.src-wave.url = "https://github.com/jiro4989/wave";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
