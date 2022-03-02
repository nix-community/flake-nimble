{
  description = ''Nim object validation using type field pragmas'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."validation-master".type = "github";
  inputs."validation-master".owner = "riinr";
  inputs."validation-master".repo = "flake-nimble";
  inputs."validation-master".ref = "flake-pinning";
  inputs."validation-master".dir = "nimpkgs/v/validation/master";
  inputs."validation-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."validation-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}