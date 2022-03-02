{
  description = ''basic monadic maybe type for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."maybe-master".type = "github";
  inputs."maybe-master".owner = "riinr";
  inputs."maybe-master".repo = "flake-nimble";
  inputs."maybe-master".ref = "flake-pinning";
  inputs."maybe-master".dir = "nimpkgs/m/maybe/master";
  inputs."maybe-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."maybe-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."maybe-1_0".type = "github";
  inputs."maybe-1_0".owner = "riinr";
  inputs."maybe-1_0".repo = "flake-nimble";
  inputs."maybe-1_0".ref = "flake-pinning";
  inputs."maybe-1_0".dir = "nimpkgs/m/maybe/1_0";
  inputs."maybe-1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."maybe-1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."maybe-2_0".type = "github";
  inputs."maybe-2_0".owner = "riinr";
  inputs."maybe-2_0".repo = "flake-nimble";
  inputs."maybe-2_0".ref = "flake-pinning";
  inputs."maybe-2_0".dir = "nimpkgs/m/maybe/2_0";
  inputs."maybe-2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."maybe-2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."maybe-2_2".type = "github";
  inputs."maybe-2_2".owner = "riinr";
  inputs."maybe-2_2".repo = "flake-nimble";
  inputs."maybe-2_2".ref = "flake-pinning";
  inputs."maybe-2_2".dir = "nimpkgs/m/maybe/2_2";
  inputs."maybe-2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."maybe-2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}