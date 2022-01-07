{
  description = ''
    Monocypher
  '';
  inputs.src-monocypher.url = "https://github.com/markspanbroek/monocypher.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
