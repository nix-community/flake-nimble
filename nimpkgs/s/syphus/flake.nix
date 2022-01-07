{
  description = ''
    An implementation of the tabu search heuristic in Nim.
  '';
  inputs.src-syphus.url = "https://github.com/makingspace/syphus";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
