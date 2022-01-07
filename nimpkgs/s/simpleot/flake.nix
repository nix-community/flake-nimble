{
  description = ''
    Simple OT wrapper
  '';
  inputs.src-simpleot.url = "https://github.com/markspanbroek/simpleot.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
