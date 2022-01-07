{
  description = ''
    Simple WebSocket library for nim.
  '';
  inputs.src-ws.url = "https://github.com/treeform/ws";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
