{
  description = ''
    Nim bindings for stb_truetype.
  '';
  inputs.src-stb_truetype.url = "https://github.com/guzba/stb_truetype";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
