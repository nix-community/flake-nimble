{
  description = ''Wrapper for the fswatch library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-fswatch-master.flake = false;
  inputs.src-fswatch-master.type = "github";
  inputs.src-fswatch-master.owner = "FedericoCeratto";
  inputs.src-fswatch-master.repo = "nim-fswatch";
  inputs.src-fswatch-master.ref = "refs/heads/master";
  inputs.src-fswatch-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fswatch-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fswatch-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fswatch-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}