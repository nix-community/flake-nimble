{
  description = ''
    SimpleHTTPServer module based on net sockets
  '';
  inputs.src-NimpleHTTPServer.url = "https://github.com/Hydra820/NimpleHTTPServer";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
