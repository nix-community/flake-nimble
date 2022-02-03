{
  description = ''A library with some basic functions for working with phylogenetic trees.'';
  inputs.src-phylogeni-v0_0_2.flake = false;
  inputs.src-phylogeni-v0_0_2.type = "github";
  inputs.src-phylogeni-v0_0_2.owner = "kerrycobb";
  inputs.src-phylogeni-v0_0_2.repo = "PhylogeNi";
  inputs.src-phylogeni-v0_0_2.ref = "refs/tags/v0.0.2";
  
  outputs = { self, nixpkgs, src-PhylogeNi-v0_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-PhylogeNi-v0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-PhylogeNi-v0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}