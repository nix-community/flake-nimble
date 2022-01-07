{
  description = ''
    MongoDb pooled driver
  '';
  inputs.src-mongopool.url = "https://github.com/JohnAD/mongopool";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
