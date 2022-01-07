{
  description = ''
    Nim module for working with Firefox bookmarks
  '';
  inputs.src-ffbookmarks.url = "https://github.com/achesak/nim-ffbookmarks";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
