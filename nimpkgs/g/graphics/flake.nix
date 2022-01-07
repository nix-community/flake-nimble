{
  description = ''
    Graphics module for Nim.
  '';
  inputs.src-graphics.url = "https://github.com/nim-lang/graphics";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
