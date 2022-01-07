{
  description = ''
    Client and server database and networking utils
  '';
  inputs.src-wavecore.url = "https://github.com/ansiwave/wavecore";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
