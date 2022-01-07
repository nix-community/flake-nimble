{
  description = ''
    Jsmn - a world fastest JSON parser - in pure Nim
  '';
  inputs.src-jsmn.url = "https://github.com/OpenSystemsLab/jsmn.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
