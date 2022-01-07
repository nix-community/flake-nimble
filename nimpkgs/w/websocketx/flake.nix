{
  description = ''
    Websocket for httpx.
  '';
  inputs.src-websocketx.url = "https://github.com/xflywind/websocketx";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
