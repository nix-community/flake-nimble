{
  description = ''A high level SQLite API for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-sqliteral-2_0_2.flake = false;
  inputs.src-sqliteral-2_0_2.type = "github";
  inputs.src-sqliteral-2_0_2.owner = "olliNiinivaara";
  inputs.src-sqliteral-2_0_2.repo = "SQLiteral";
  inputs.src-sqliteral-2_0_2.ref = "refs/tags/2.0.2";
  inputs.src-sqliteral-2_0_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sqliteral-2_0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sqliteral-2_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sqliteral-2_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}