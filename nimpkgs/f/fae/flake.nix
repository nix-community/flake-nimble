{
  description = ''Find and Edit Utility'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."fae-master".type = "github";
  inputs."fae-master".owner = "riinr";
  inputs."fae-master".repo = "flake-nimble";
  inputs."fae-master".ref = "flake-pinning";
  inputs."fae-master".dir = "nimpkgs/f/fae/master";
  inputs."fae-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fae-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fae-v1_0_0".type = "github";
  inputs."fae-v1_0_0".owner = "riinr";
  inputs."fae-v1_0_0".repo = "flake-nimble";
  inputs."fae-v1_0_0".ref = "flake-pinning";
  inputs."fae-v1_0_0".dir = "nimpkgs/f/fae/v1_0_0";
  inputs."fae-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fae-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fae-v1_1_0".type = "github";
  inputs."fae-v1_1_0".owner = "riinr";
  inputs."fae-v1_1_0".repo = "flake-nimble";
  inputs."fae-v1_1_0".ref = "flake-pinning";
  inputs."fae-v1_1_0".dir = "nimpkgs/f/fae/v1_1_0";
  inputs."fae-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fae-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}