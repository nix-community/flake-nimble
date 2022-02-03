{
  description = ''A wrapper for SQLite'';
  inputs.src-sqlite3_abi-master.flake = false;
  inputs.src-sqlite3_abi-master.type = "github";
  inputs.src-sqlite3_abi-master.owner = "arnetheduck";
  inputs.src-sqlite3_abi-master.repo = "nim-sqlite3-abi";
  inputs.src-sqlite3_abi-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sqlite3_abi-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sqlite3_abi-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sqlite3_abi-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}