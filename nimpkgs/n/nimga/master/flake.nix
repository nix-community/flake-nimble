{
  description = ''Genetic Algorithm Library for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimga-master.flake = false;
  inputs.src-nimga-master.type = "github";
  inputs.src-nimga-master.owner = "toshikiohnogi";
  inputs.src-nimga-master.repo = "nimga";
  inputs.src-nimga-master.ref = "refs/heads/master";
  inputs.src-nimga-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimga-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimga-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimga-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}