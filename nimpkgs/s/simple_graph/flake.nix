{
  description = ''
    Simple Graph Library
  '';
  inputs.src-simple_graph.url = "https://github.com/erhlee-bird/simple_graph";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
