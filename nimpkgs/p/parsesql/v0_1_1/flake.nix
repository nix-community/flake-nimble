{
  description = ''The parsesql module implements a high performance SQL file parser. It parses PostgreSQL syntax and the SQL ANSI standard.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-parsesql-v0_1_1.flake = false;
  inputs.src-parsesql-v0_1_1.type = "github";
  inputs.src-parsesql-v0_1_1.owner = "bung87";
  inputs.src-parsesql-v0_1_1.repo = "parsesql";
  inputs.src-parsesql-v0_1_1.ref = "refs/tags/v0.1.1";
  inputs.src-parsesql-v0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-parsesql-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-parsesql-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-parsesql-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}