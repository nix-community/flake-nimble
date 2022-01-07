{
  description = ''
    Graph With Weight Libary
  '';
  inputs.src-weightedgraph.url = "https://github.com/AzamShafiul/weighted_graph";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
