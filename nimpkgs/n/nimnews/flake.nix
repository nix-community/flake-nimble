{
  description = ''
    Immature Newsgroup NNTP server using SQLite as backend
  '';
  inputs.src-nimnews.url = "https://github.com/mildred/nimnews";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
