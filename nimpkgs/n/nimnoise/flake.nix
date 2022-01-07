{
  description = ''
    A port of libnoise into pure nim, heavily inspired by Libnoise.Unity, but true to the original Libnoise
  '';
  inputs.src-nimnoise.url = "https://github.com/blakeanedved/nimnoise";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
