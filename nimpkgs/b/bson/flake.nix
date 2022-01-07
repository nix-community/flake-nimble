{
  description = ''
    BSON Binary JSON Serialization
  '';
  inputs.src-bson.url = "https://github.com/JohnAD/bson";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
