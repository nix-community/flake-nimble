{
  description = ''Yet another SQLite wrapper for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-easy_sqlite3-develop.flake = false;
  inputs.src-easy_sqlite3-develop.type = "github";
  inputs.src-easy_sqlite3-develop.owner = "codehz";
  inputs.src-easy_sqlite3-develop.repo = "easy_sqlite3";
  inputs.src-easy_sqlite3-develop.ref = "refs/heads/develop";
  inputs.src-easy_sqlite3-develop.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-easy_sqlite3-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-easy_sqlite3-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-easy_sqlite3-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}