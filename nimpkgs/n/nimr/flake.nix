{
  description = ''Helper to run nim code like a script'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimr-master".type = "github";
  inputs."nimr-master".owner = "riinr";
  inputs."nimr-master".repo = "flake-nimble";
  inputs."nimr-master".ref = "flake-pinning";
  inputs."nimr-master".dir = "nimpkgs/n/nimr/master";
  inputs."nimr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}