{
  description = ''
    Nim library for implementing JSON-RPC clients and servers
  '';
  inputs.src-json_rpc.url = "https://github.com/status-im/nim-json-rpc";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
