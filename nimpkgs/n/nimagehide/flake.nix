{
  description = ''A library to hide data in images. Usable as library or cli tool.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimagehide-master".type = "github";
  inputs."nimagehide-master".owner = "riinr";
  inputs."nimagehide-master".repo = "flake-nimble";
  inputs."nimagehide-master".ref = "flake-pinning";
  inputs."nimagehide-master".dir = "nimpkgs/n/nimagehide/master";
  inputs."nimagehide-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimagehide-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}