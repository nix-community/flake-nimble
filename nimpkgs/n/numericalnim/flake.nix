{
  description = ''
    A collection of numerical methods written in Nim
  '';
  inputs.src-numericalnim.url = "https://github.com/SciNim/numericalnim/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
