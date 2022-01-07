{
  description = ''
    Elegant optional types
  '';
  inputs.src-questionable.url = "https://github.com/markspanbroek/questionable";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
