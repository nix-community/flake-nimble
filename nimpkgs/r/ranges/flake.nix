{
  description = ''Exploration of various implementations of memory range types'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ranges-master".type = "github";
  inputs."ranges-master".owner = "riinr";
  inputs."ranges-master".repo = "flake-nimble";
  inputs."ranges-master".ref = "flake-pinning";
  inputs."ranges-master".dir = "nimpkgs/r/ranges/master";
  inputs."ranges-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ranges-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}