{
  description = ''A library with some basic functions for working with phylogenetic trees.'';
  inputs.src-phylogeni-main.flake = false;
  inputs.src-phylogeni-main.type = "github";
  inputs.src-phylogeni-main.owner = "kerrycobb";
  inputs.src-phylogeni-main.repo = "PhylogeNi";
  inputs.src-phylogeni-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-PhylogeNi-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-PhylogeNi-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-PhylogeNi-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}