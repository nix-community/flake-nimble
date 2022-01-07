{
  description = ''
    RPC implementation for Nim based on msgpack4nim
  '';
  inputs.src-nimrpc.url = "https://github.com/rogercloud/nim-rpc";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
