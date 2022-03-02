{
  description = ''Brainly data extractor'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."brainlyextractor-master".type = "github";
  inputs."brainlyextractor-master".owner = "riinr";
  inputs."brainlyextractor-master".repo = "flake-nimble";
  inputs."brainlyextractor-master".ref = "flake-pinning";
  inputs."brainlyextractor-master".dir = "nimpkgs/b/brainlyextractor/master";
  inputs."brainlyextractor-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."brainlyextractor-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}