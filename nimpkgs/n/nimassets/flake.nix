{
  description = ''bundle your assets to a nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimassets-master".type = "github";
  inputs."nimassets-master".owner = "riinr";
  inputs."nimassets-master".repo = "flake-nimble";
  inputs."nimassets-master".ref = "flake-pinning";
  inputs."nimassets-master".dir = "nimpkgs/n/nimassets/master";
  inputs."nimassets-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimassets-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}