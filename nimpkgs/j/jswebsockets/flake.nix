{
  description = ''
    Websockets wrapper for nim js backend.
  '';
  inputs.src-jswebsockets.url = "https://github.com/stisa/jswebsockets";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
