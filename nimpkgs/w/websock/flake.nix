{
  description = ''
     Websocket server and client implementation
  '';
  inputs.src-websock.url = "https://github.com/status-im/nim-websock";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
