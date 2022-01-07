{
  description = ''
    A D3.js wrapper for Nim
  '';
  inputs.src-d3.url = "https://github.com/hiteshjasani/nim-d3";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
