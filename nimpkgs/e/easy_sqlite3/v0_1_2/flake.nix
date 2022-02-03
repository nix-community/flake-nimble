{
  description = ''Yet another SQLite wrapper for Nim.'';
  inputs.src-easy_sqlite3-v0_1_2.flake = false;
  inputs.src-easy_sqlite3-v0_1_2.type = "github";
  inputs.src-easy_sqlite3-v0_1_2.owner = "codehz";
  inputs.src-easy_sqlite3-v0_1_2.repo = "easy_sqlite3";
  inputs.src-easy_sqlite3-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-easy_sqlite3-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-easy_sqlite3-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-easy_sqlite3-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}