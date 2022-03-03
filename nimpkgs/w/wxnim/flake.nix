{
  description = ''Nim wrapper for wxWidgets. Also contains high-level genui macro'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."wxnim-master".type = "github";
  inputs."wxnim-master".owner = "riinr";
  inputs."wxnim-master".repo = "flake-nimble";
  inputs."wxnim-master".ref = "flake-pinning";
  inputs."wxnim-master".dir = "nimpkgs/w/wxnim/master";
  inputs."wxnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wxnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}