{
  description = ''A high level SQLite API for Nim'';
  inputs.src-sqliteral-master.flake = false;
  inputs.src-sqliteral-master.type = "github";
  inputs.src-sqliteral-master.owner = "olliNiinivaara";
  inputs.src-sqliteral-master.repo = "SQLiteral";
  inputs.src-sqliteral-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sqliteral-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sqliteral-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sqliteral-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}