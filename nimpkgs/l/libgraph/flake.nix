{
  description = ''
    Converts 2D linear graph coordinates to pixels on screen
  '';
  inputs.src-libgraph.url = "https://github.com/Mnenmenth/libgraphnim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
