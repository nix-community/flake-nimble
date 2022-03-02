{
  description = ''oracle odpi-c wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimodpi-master".type = "github";
  inputs."nimodpi-master".owner = "riinr";
  inputs."nimodpi-master".repo = "flake-nimble";
  inputs."nimodpi-master".ref = "flake-pinning";
  inputs."nimodpi-master".dir = "nimpkgs/n/nimodpi/master";
  inputs."nimodpi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimodpi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}