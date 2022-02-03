{
  description = ''The parsesql module implements a high performance SQL file parser. It parses PostgreSQL syntax and the SQL ANSI standard.'';
  inputs.src-parsesql-master.flake = false;
  inputs.src-parsesql-master.type = "github";
  inputs.src-parsesql-master.owner = "bung87";
  inputs.src-parsesql-master.repo = "parsesql";
  inputs.src-parsesql-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-parsesql-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-parsesql-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-parsesql-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}