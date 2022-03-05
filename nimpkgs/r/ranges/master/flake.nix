{
  description = ''Exploration of various implementations of memory range types'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ranges-master.flake = false;
  inputs.src-ranges-master.type = "github";
  inputs.src-ranges-master.owner = "status-im";
  inputs.src-ranges-master.repo = "nim-ranges";
  inputs.src-ranges-master.ref = "refs/heads/master";
  inputs.src-ranges-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ranges-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ranges-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ranges-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}