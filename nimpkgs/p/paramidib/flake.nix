{
  description = ''paramidi with nimib'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."paramidib-main".type = "github";
  inputs."paramidib-main".owner = "riinr";
  inputs."paramidib-main".repo = "flake-nimble";
  inputs."paramidib-main".ref = "flake-pinning";
  inputs."paramidib-main".dir = "nimpkgs/p/paramidib/main";
  inputs."paramidib-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidib-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}