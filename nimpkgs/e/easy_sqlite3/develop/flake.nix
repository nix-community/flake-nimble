{
  description = ''Yet another SQLite wrapper for Nim.'';
  inputs.src-easy_sqlite3-develop.flake = false;
  inputs.src-easy_sqlite3-develop.type = "github";
  inputs.src-easy_sqlite3-develop.owner = "codehz";
  inputs.src-easy_sqlite3-develop.repo = "easy_sqlite3";
  inputs.src-easy_sqlite3-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, src-easy_sqlite3-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-easy_sqlite3-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-easy_sqlite3-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}