{
  description = ''A library with some basic functions for working with phylogenetic trees.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-phylogeni-main.flake = false;
  inputs.src-phylogeni-main.type = "github";
  inputs.src-phylogeni-main.owner = "kerrycobb";
  inputs.src-phylogeni-main.repo = "PhylogeNi";
  inputs.src-phylogeni-main.ref = "refs/heads/main";
  inputs.src-phylogeni-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-PhylogeNi-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-PhylogeNi-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-PhylogeNi-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}