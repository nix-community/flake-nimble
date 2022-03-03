{
  description = ''The Nim bindings for linksplatform/Data.Triplets.Kernel.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-triplets-master.flake = false;
  inputs.src-triplets-master.type = "github";
  inputs.src-triplets-master.owner = "linksplatform";
  inputs.src-triplets-master.repo = "Data.Triplets";
  inputs.src-triplets-master.ref = "refs/heads/master";
  inputs.src-triplets-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-triplets-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-triplets-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-triplets-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}