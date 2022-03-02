{
  description = ''A pure Nim bloom filter.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."flower-main".type = "github";
  inputs."flower-main".owner = "riinr";
  inputs."flower-main".repo = "flake-nimble";
  inputs."flower-main".ref = "flake-pinning";
  inputs."flower-main".dir = "nimpkgs/f/flower/main";
  inputs."flower-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flower-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}