{
  description = ''Yet another SQLite wrapper for Nim.'';
  inputs.src-easy_sqlite3-v0_1_0.flake = false;
  inputs.src-easy_sqlite3-v0_1_0.type = "github";
  inputs.src-easy_sqlite3-v0_1_0.owner = "codehz";
  inputs.src-easy_sqlite3-v0_1_0.repo = "easy_sqlite3";
  inputs.src-easy_sqlite3-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-easy_sqlite3-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-easy_sqlite3-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-easy_sqlite3-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}