{
  description = ''A wrapper for SQLite'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sqlite3_abi-master.flake = false;
  inputs.src-sqlite3_abi-master.type = "github";
  inputs.src-sqlite3_abi-master.owner = "arnetheduck";
  inputs.src-sqlite3_abi-master.repo = "nim-sqlite3-abi";
  inputs.src-sqlite3_abi-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sqlite3_abi-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sqlite3_abi-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sqlite3_abi-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}