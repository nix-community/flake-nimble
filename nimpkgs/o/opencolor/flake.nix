{
  description = ''
    Nim bindings for Open color
  '';
  inputs.src-opencolor.url = "https://github.com/Double-oxygeN/opencolor.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
