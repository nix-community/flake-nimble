{
  description = ''Functions for string validation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."validator-master".type = "github";
  inputs."validator-master".owner = "riinr";
  inputs."validator-master".repo = "flake-nimble";
  inputs."validator-master".ref = "flake-pinning";
  inputs."validator-master".dir = "nimpkgs/v/validator/master";
  inputs."validator-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."validator-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}