{
  description = ''
    Nim bindings for the GraphViz tool and the DOT graph language
  '';
  inputs.src-nimgraphviz.url = "https://github.com/Aveheuzed/nimgraphviz";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
