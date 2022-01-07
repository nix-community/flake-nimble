{
  description = ''
    A Jester web plugin that gets a pooled MongoDB connection for each web query.
  '';
  inputs.src-jestermongopool.url = "https://github.com/JohnAD/jestermongopool";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
