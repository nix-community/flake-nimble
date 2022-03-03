{
  description = ''Very simple PostgreSQL async api for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-pg-master.flake = false;
  inputs.src-pg-master.type = "github";
  inputs.src-pg-master.owner = "treeform";
  inputs.src-pg-master.repo = "pg";
  inputs.src-pg-master.ref = "refs/heads/master";
  inputs.src-pg-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pg-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pg-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pg-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}