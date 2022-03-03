{
  description = ''Mathematical formulas'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."formulas-master".type = "github";
  inputs."formulas-master".owner = "riinr";
  inputs."formulas-master".repo = "flake-nimble";
  inputs."formulas-master".ref = "flake-pinning";
  inputs."formulas-master".dir = "nimpkgs/f/formulas/master";
  inputs."formulas-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."formulas-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}