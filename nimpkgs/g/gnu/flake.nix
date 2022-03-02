{
  description = ''Godot-Nim Utility - Godot gamedev with Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."gnu-main".type = "github";
  inputs."gnu-main".owner = "riinr";
  inputs."gnu-main".repo = "flake-nimble";
  inputs."gnu-main".ref = "flake-pinning";
  inputs."gnu-main".dir = "nimpkgs/g/gnu/main";
  inputs."gnu-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnu-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gnu-v0_0_1".type = "github";
  inputs."gnu-v0_0_1".owner = "riinr";
  inputs."gnu-v0_0_1".repo = "flake-nimble";
  inputs."gnu-v0_0_1".ref = "flake-pinning";
  inputs."gnu-v0_0_1".dir = "nimpkgs/g/gnu/v0_0_1";
  inputs."gnu-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnu-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gnu-v0_1_1".type = "github";
  inputs."gnu-v0_1_1".owner = "riinr";
  inputs."gnu-v0_1_1".repo = "flake-nimble";
  inputs."gnu-v0_1_1".ref = "flake-pinning";
  inputs."gnu-v0_1_1".dir = "nimpkgs/g/gnu/v0_1_1";
  inputs."gnu-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnu-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gnu-v0_1_2".type = "github";
  inputs."gnu-v0_1_2".owner = "riinr";
  inputs."gnu-v0_1_2".repo = "flake-nimble";
  inputs."gnu-v0_1_2".ref = "flake-pinning";
  inputs."gnu-v0_1_2".dir = "nimpkgs/g/gnu/v0_1_2";
  inputs."gnu-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnu-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}