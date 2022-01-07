{
  description = ''
    Bencode serialization/deserialization library
  '';
  inputs.src-bencode.url = "https://github.com/FedericoCeratto/nim-bencode";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
