{
  description = ''
    various vector maths utils for nimrod
  '';
  inputs.src-vecmath.url = "https://github.com/barcharcraz/vecmath";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
