{
  description = ''Implementation of JSON5.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."samson-master".type = "github";
  inputs."samson-master".owner = "riinr";
  inputs."samson-master".repo = "flake-nimble";
  inputs."samson-master".ref = "flake-pinning";
  inputs."samson-master".dir = "nimpkgs/s/samson/master";
  inputs."samson-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."samson-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}