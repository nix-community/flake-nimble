{
  description = ''
    websockets for nim
  '';
  inputs.src-websocket.url = "https://github.com/niv/websocket.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
