{
  description = ''
    exception tracking for older versions of nim
  '';
  inputs.src-upraises.url = "https://github.com/markspanbroek/upraises";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
