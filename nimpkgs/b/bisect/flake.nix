{
  description = ''
    Bisection algorithms ported from Python
  '';
  inputs.src-bisect.url = "https://github.com/berquist/bisect";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
