{
  description = ''Pipe operator for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-pipe-master.flake = false;
  inputs.src-pipe-master.type = "github";
  inputs.src-pipe-master.owner = "CosmicToast";
  inputs.src-pipe-master.repo = "pipe";
  inputs.src-pipe-master.ref = "refs/heads/master";
  inputs.src-pipe-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pipe-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pipe-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pipe-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}