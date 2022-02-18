{
  description = ''A library with some basic functions for working with phylogenetic trees.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-phylogeni-main.flake = false;
  inputs.src-phylogeni-main.type = "github";
  inputs.src-phylogeni-main.owner = "kerrycobb";
  inputs.src-phylogeni-main.repo = "PhylogeNi";
  inputs.src-phylogeni-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-phylogeni-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-phylogeni-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-phylogeni-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}