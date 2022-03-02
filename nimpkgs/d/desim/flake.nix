{
  description = ''A lightweight discrete event simulator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."desim-master".type = "github";
  inputs."desim-master".owner = "riinr";
  inputs."desim-master".repo = "flake-nimble";
  inputs."desim-master".ref = "flake-pinning";
  inputs."desim-master".dir = "nimpkgs/d/desim/master";
  inputs."desim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."desim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}