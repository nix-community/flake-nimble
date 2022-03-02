{
  description = ''Bluesoft Cosmos extractor'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."bluesoftcosmos-master".type = "github";
  inputs."bluesoftcosmos-master".owner = "riinr";
  inputs."bluesoftcosmos-master".repo = "flake-nimble";
  inputs."bluesoftcosmos-master".ref = "flake-pinning";
  inputs."bluesoftcosmos-master".dir = "nimpkgs/b/bluesoftcosmos/master";
  inputs."bluesoftcosmos-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bluesoftcosmos-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}