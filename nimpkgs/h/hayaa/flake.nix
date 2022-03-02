{
  description = ''Conway's Game of Life implemented in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."hayaa-main".type = "github";
  inputs."hayaa-main".owner = "riinr";
  inputs."hayaa-main".repo = "flake-nimble";
  inputs."hayaa-main".ref = "flake-pinning";
  inputs."hayaa-main".dir = "nimpkgs/h/hayaa/main";
  inputs."hayaa-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hayaa-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hayaa-v0_2_0".type = "github";
  inputs."hayaa-v0_2_0".owner = "riinr";
  inputs."hayaa-v0_2_0".repo = "flake-nimble";
  inputs."hayaa-v0_2_0".ref = "flake-pinning";
  inputs."hayaa-v0_2_0".dir = "nimpkgs/h/hayaa/v0_2_0";
  inputs."hayaa-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hayaa-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hayaa-v0_2_1".type = "github";
  inputs."hayaa-v0_2_1".owner = "riinr";
  inputs."hayaa-v0_2_1".repo = "flake-nimble";
  inputs."hayaa-v0_2_1".ref = "flake-pinning";
  inputs."hayaa-v0_2_1".dir = "nimpkgs/h/hayaa/v0_2_1";
  inputs."hayaa-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hayaa-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hayaa-v0_3_0".type = "github";
  inputs."hayaa-v0_3_0".owner = "riinr";
  inputs."hayaa-v0_3_0".repo = "flake-nimble";
  inputs."hayaa-v0_3_0".ref = "flake-pinning";
  inputs."hayaa-v0_3_0".dir = "nimpkgs/h/hayaa/v0_3_0";
  inputs."hayaa-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hayaa-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}