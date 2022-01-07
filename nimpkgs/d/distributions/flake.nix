{
  description = ''
    Distributions is a Nim library for distributions and their functions.
  '';
  inputs.src-distributions.url = "https://github.com/ayman-albaz/distributions";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
