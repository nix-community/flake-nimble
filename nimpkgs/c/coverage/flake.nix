{
  description = ''
    Code coverage library
  '';
  inputs.src-coverage.url = "https://github.com/yglukhov/coverage";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
