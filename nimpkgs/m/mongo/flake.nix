{
  description = ''
    Bindings and a high-level interface for MongoDB
  '';
  inputs.src-mongo.url = "https://github.com/nim-lang/mongo";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
