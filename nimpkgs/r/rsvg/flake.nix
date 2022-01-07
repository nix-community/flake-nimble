{
  description = ''
    Wrapper for librsvg, a Scalable Vector Graphics (SVG) rendering library
  '';
  inputs.src-rsvg.url = "https://github.com/def-/rsvg";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
