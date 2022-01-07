{
  description = ''
    Graph data structure library
  '';
  inputs.src-patgraph.url = "https://github.com/planetis-m/patgraph";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
