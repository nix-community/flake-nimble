{
  description = ''A library with some basic functions for working with phylogenetic trees.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."phylogeni-main".type = "github";
  inputs."phylogeni-main".owner = "riinr";
  inputs."phylogeni-main".repo = "flake-nimble";
  inputs."phylogeni-main".ref = "flake-pinning";
  inputs."phylogeni-main".dir = "nimpkgs/p/phylogeni/main";
  inputs."phylogeni-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."phylogeni-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."phylogeni-v0_0_2".type = "github";
  inputs."phylogeni-v0_0_2".owner = "riinr";
  inputs."phylogeni-v0_0_2".repo = "flake-nimble";
  inputs."phylogeni-v0_0_2".ref = "flake-pinning";
  inputs."phylogeni-v0_0_2".dir = "nimpkgs/p/phylogeni/v0_0_2";
  inputs."phylogeni-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."phylogeni-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}