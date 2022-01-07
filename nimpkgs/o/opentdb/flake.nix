{
  description = ''
    Wrapper around the open trivia db api
  '';
  inputs.src-opentdb.url = "https://github.com/ire4ever1190/nim-opentmdb";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
