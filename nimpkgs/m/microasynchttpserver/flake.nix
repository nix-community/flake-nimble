{
  description = ''
    A thin asynchronous HTTP server library, API compatible with Nim's built-in asynchttpserver.
  '';
  inputs.src-microasynchttpserver.url = "https://github.com/philip-wernersbach/microasynchttpserver";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
