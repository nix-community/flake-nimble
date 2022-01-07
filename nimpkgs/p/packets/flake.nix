{
  description = ''
    Declarative packets system for serializing/deserializing and marshalling
  '';
  inputs.src-packets.url = "https://github.com/Q-Master/packets.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
