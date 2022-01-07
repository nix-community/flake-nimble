{
  description = ''
    Simple terminal ping graph
  '';
  inputs.src-pinggraph.url = "https://github.com/SolitudeSF/pinggraph";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
