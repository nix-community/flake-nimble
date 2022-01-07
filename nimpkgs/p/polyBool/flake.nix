{
  description = ''
    Polygon Clipper Library (Martinez Algorithm)
  '';
  inputs.src-polyBool.url = "https://github.com/jangko/polyBool";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
