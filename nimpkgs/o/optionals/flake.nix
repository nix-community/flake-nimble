{
  description = ''Option types'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."optionals-master".type = "github";
  inputs."optionals-master".owner = "riinr";
  inputs."optionals-master".repo = "flake-nimble";
  inputs."optionals-master".ref = "flake-pinning";
  inputs."optionals-master".dir = "nimpkgs/o/optionals/master";
  inputs."optionals-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."optionals-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}