{
  description = ''Nim module for working with Firefox bookmarks'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ffbookmarks-master.flake = false;
  inputs.src-ffbookmarks-master.type = "github";
  inputs.src-ffbookmarks-master.owner = "achesak";
  inputs.src-ffbookmarks-master.repo = "nim-ffbookmarks";
  inputs.src-ffbookmarks-master.ref = "refs/heads/master";
  inputs.src-ffbookmarks-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ffbookmarks-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ffbookmarks-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ffbookmarks-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}