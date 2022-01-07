{
  description = ''
    TwineMedia API client library for Nim
  '';
  inputs.src-tm_client.url = "https://github.com/termermc/nim-tm-client";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
