{
  description = ''
    Protobuf implementation compatible with the nim-serialization framework.
  '';
  inputs.src-protobuf_serialization.url = "https://github.com/status-im/nim-protobuf-serialization";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
