{
  description = ''Provides access to the rdrand and rdseed instructions. Based on Intel's DRNG Library (libdrng)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."drng-main".type = "github";
  inputs."drng-main".owner = "riinr";
  inputs."drng-main".repo = "flake-nimble";
  inputs."drng-main".ref = "flake-pinning";
  inputs."drng-main".dir = "nimpkgs/d/drng/main";
  inputs."drng-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drng-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}