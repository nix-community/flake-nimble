{
  description = ''Color and utilities library for linux terminal.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimcx-master.flake = false;
  inputs.src-nimcx-master.type = "github";
  inputs.src-nimcx-master.owner = "qqtop";
  inputs.src-nimcx-master.repo = "nimcx";
  inputs.src-nimcx-master.ref = "refs/heads/master";
  inputs.src-nimcx-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimcx-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcx-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimcx-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}