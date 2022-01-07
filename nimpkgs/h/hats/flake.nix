{
  description = ''
    Various kinds of hashed array trees.
  '';
  inputs.src-hats.url = "https://github.com/davidgarland/nim-hats";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
