{
  description = ''Bindings for the InterSense SDK'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."isense-master".type = "github";
  inputs."isense-master".owner = "riinr";
  inputs."isense-master".repo = "flake-nimble";
  inputs."isense-master".ref = "flake-pinning";
  inputs."isense-master".dir = "nimpkgs/i/isense/master";
  inputs."isense-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isense-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}