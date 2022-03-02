{
  description = ''A very simple micro web framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."mike-master".type = "github";
  inputs."mike-master".owner = "riinr";
  inputs."mike-master".repo = "flake-nimble";
  inputs."mike-master".ref = "flake-pinning";
  inputs."mike-master".dir = "nimpkgs/m/mike/master";
  inputs."mike-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mike-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mike-1_0_0".type = "github";
  inputs."mike-1_0_0".owner = "riinr";
  inputs."mike-1_0_0".repo = "flake-nimble";
  inputs."mike-1_0_0".ref = "flake-pinning";
  inputs."mike-1_0_0".dir = "nimpkgs/m/mike/1_0_0";
  inputs."mike-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mike-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mike-1_1_0".type = "github";
  inputs."mike-1_1_0".owner = "riinr";
  inputs."mike-1_1_0".repo = "flake-nimble";
  inputs."mike-1_1_0".ref = "flake-pinning";
  inputs."mike-1_1_0".dir = "nimpkgs/m/mike/1_1_0";
  inputs."mike-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mike-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mike-1_2_0".type = "github";
  inputs."mike-1_2_0".owner = "riinr";
  inputs."mike-1_2_0".repo = "flake-nimble";
  inputs."mike-1_2_0".ref = "flake-pinning";
  inputs."mike-1_2_0".dir = "nimpkgs/m/mike/1_2_0";
  inputs."mike-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mike-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mike-1_2_1".type = "github";
  inputs."mike-1_2_1".owner = "riinr";
  inputs."mike-1_2_1".repo = "flake-nimble";
  inputs."mike-1_2_1".ref = "flake-pinning";
  inputs."mike-1_2_1".dir = "nimpkgs/m/mike/1_2_1";
  inputs."mike-1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mike-1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}