{
  description = ''Yet another SQLite wrapper for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-easy_sqlite3-v0_1_4.flake = false;
  inputs.src-easy_sqlite3-v0_1_4.type = "github";
  inputs.src-easy_sqlite3-v0_1_4.owner = "codehz";
  inputs.src-easy_sqlite3-v0_1_4.repo = "easy_sqlite3";
  inputs.src-easy_sqlite3-v0_1_4.ref = "refs/tags/v0.1.4";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-easy_sqlite3-v0_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-easy_sqlite3-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-easy_sqlite3-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}