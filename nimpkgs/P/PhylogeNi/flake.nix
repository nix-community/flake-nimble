{
  description = ''
    A library with some basic functions for working with phylogenetic trees.
  '';
  inputs.src-PhylogeNi.url = "https://github.com/kerrycobb/PhylogeNi";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
