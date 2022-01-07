{
  description = ''
    Protobuf implementation in pure Nim that leverages the power of the macro system to not depend on any external tools
  '';
  inputs.src-protobuf.url = "https://github.com/PMunch/protobuf-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
