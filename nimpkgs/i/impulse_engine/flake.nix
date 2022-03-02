{
  description = ''Nim port of a simple 2D physics engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."impulse_engine-master".type = "github";
  inputs."impulse_engine-master".owner = "riinr";
  inputs."impulse_engine-master".repo = "flake-nimble";
  inputs."impulse_engine-master".ref = "flake-pinning";
  inputs."impulse_engine-master".dir = "nimpkgs/i/impulse_engine/master";
  inputs."impulse_engine-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."impulse_engine-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}