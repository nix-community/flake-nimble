{
  description = ''Large number of cryptographic hashes for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sph-master".type = "github";
  inputs."sph-master".owner = "riinr";
  inputs."sph-master".repo = "flake-nimble";
  inputs."sph-master".ref = "flake-pinning";
  inputs."sph-master".dir = "nimpkgs/s/sph/master";
  inputs."sph-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sph-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}