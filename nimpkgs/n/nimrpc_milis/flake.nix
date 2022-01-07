{
  description = ''
    RPC implementation for Nim based on msgpack4nim
  '';
  inputs.src-nimrpc_milis.url = "https://github.com/milisarge/nimrpc_milis";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
