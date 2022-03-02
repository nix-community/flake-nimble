{
  description = ''A high level SQLite API for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-sqliteral-master.flake = false;
  inputs.src-sqliteral-master.type = "github";
  inputs.src-sqliteral-master.owner = "olliNiinivaara";
  inputs.src-sqliteral-master.repo = "SQLiteral";
  inputs.src-sqliteral-master.ref = "refs/heads/master";
  inputs.src-sqliteral-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sqliteral-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sqliteral-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sqliteral-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}