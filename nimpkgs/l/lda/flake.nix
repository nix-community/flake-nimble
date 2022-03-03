{
  description = ''Latent Dirichlet Allocation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."lda-master".type = "github";
  inputs."lda-master".owner = "riinr";
  inputs."lda-master".repo = "flake-nimble";
  inputs."lda-master".ref = "flake-pinning";
  inputs."lda-master".dir = "nimpkgs/l/lda/master";
  inputs."lda-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lda-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}