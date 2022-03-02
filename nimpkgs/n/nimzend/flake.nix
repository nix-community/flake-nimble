{
  description = ''Native Nim Zend API glue for easy PHP extension development.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimzend-master".type = "github";
  inputs."nimzend-master".owner = "riinr";
  inputs."nimzend-master".repo = "flake-nimble";
  inputs."nimzend-master".ref = "flake-pinning";
  inputs."nimzend-master".dir = "nimpkgs/n/nimzend/master";
  inputs."nimzend-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimzend-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}