{
  description = ''Nim module for working with Firefox bookmarks'';
  inputs.src-ffbookmarks-master.flake = false;
  inputs.src-ffbookmarks-master.type = "github";
  inputs.src-ffbookmarks-master.owner = "achesak";
  inputs.src-ffbookmarks-master.repo = "nim-ffbookmarks";
  inputs.src-ffbookmarks-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ffbookmarks-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ffbookmarks-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ffbookmarks-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}