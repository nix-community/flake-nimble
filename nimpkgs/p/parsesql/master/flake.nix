{
  description = ''The parsesql module implements a high performance SQL file parser. It parses PostgreSQL syntax and the SQL ANSI standard.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-parsesql-master.flake = false;
  inputs.src-parsesql-master.type = "github";
  inputs.src-parsesql-master.owner = "bung87";
  inputs.src-parsesql-master.repo = "parsesql";
  inputs.src-parsesql-master.ref = "refs/heads/master";
  inputs.src-parsesql-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-parsesql-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-parsesql-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-parsesql-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}