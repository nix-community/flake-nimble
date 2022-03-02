{
  description = ''Implementation of dual numbers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."dual-master".type = "github";
  inputs."dual-master".owner = "riinr";
  inputs."dual-master".repo = "flake-nimble";
  inputs."dual-master".ref = "flake-pinning";
  inputs."dual-master".dir = "nimpkgs/d/dual/master";
  inputs."dual-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dual-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}