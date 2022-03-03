{
  description = ''Word2vec implemented in nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."word2vec-master".type = "github";
  inputs."word2vec-master".owner = "riinr";
  inputs."word2vec-master".repo = "flake-nimble";
  inputs."word2vec-master".ref = "flake-pinning";
  inputs."word2vec-master".dir = "nimpkgs/w/word2vec/master";
  inputs."word2vec-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."word2vec-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."word2vec-0_0_1".type = "github";
  inputs."word2vec-0_0_1".owner = "riinr";
  inputs."word2vec-0_0_1".repo = "flake-nimble";
  inputs."word2vec-0_0_1".ref = "flake-pinning";
  inputs."word2vec-0_0_1".dir = "nimpkgs/w/word2vec/0_0_1";
  inputs."word2vec-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."word2vec-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."word2vec-v0_0_1".type = "github";
  inputs."word2vec-v0_0_1".owner = "riinr";
  inputs."word2vec-v0_0_1".repo = "flake-nimble";
  inputs."word2vec-v0_0_1".ref = "flake-pinning";
  inputs."word2vec-v0_0_1".dir = "nimpkgs/w/word2vec/v0_0_1";
  inputs."word2vec-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."word2vec-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}