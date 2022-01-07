{
  description = ''
    Distances is a high performance Nim library for calculating distances.
  '';
  inputs.src-distances.url = "https://github.com/ayman-albaz/distances";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
