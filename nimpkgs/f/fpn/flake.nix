{
  description = ''
    A fixed point number library in pure Nim.
  '';
  inputs.src-fpn.url = "https://gitlab.com/lbartoletti/fpn";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
