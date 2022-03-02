{
  description = ''Wrapper for the FreeImage library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."freeimage-master".type = "github";
  inputs."freeimage-master".owner = "riinr";
  inputs."freeimage-master".repo = "flake-nimble";
  inputs."freeimage-master".ref = "flake-pinning";
  inputs."freeimage-master".dir = "nimpkgs/f/freeimage/master";
  inputs."freeimage-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."freeimage-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}