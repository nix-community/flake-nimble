{
  description = ''Postgres utility functions'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-pg_util-master.flake = false;
  inputs.src-pg_util-master.type = "github";
  inputs.src-pg_util-master.owner = "hiteshjasani";
  inputs.src-pg_util-master.repo = "nim-pg-util";
  inputs.src-pg_util-master.ref = "refs/heads/master";
  inputs.src-pg_util-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pg_util-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pg_util-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pg_util-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}