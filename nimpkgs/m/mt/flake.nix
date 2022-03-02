{
  description = ''A simple TLDR pages client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."mt-main".type = "github";
  inputs."mt-main".owner = "riinr";
  inputs."mt-main".repo = "flake-nimble";
  inputs."mt-main".ref = "flake-pinning";
  inputs."mt-main".dir = "nimpkgs/m/mt/main";
  inputs."mt-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mt-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mt-0_1_0".type = "github";
  inputs."mt-0_1_0".owner = "riinr";
  inputs."mt-0_1_0".repo = "flake-nimble";
  inputs."mt-0_1_0".ref = "flake-pinning";
  inputs."mt-0_1_0".dir = "nimpkgs/m/mt/0_1_0";
  inputs."mt-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mt-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mt-0_1_1".type = "github";
  inputs."mt-0_1_1".owner = "riinr";
  inputs."mt-0_1_1".repo = "flake-nimble";
  inputs."mt-0_1_1".ref = "flake-pinning";
  inputs."mt-0_1_1".dir = "nimpkgs/m/mt/0_1_1";
  inputs."mt-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mt-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mt-0_2_0".type = "github";
  inputs."mt-0_2_0".owner = "riinr";
  inputs."mt-0_2_0".repo = "flake-nimble";
  inputs."mt-0_2_0".ref = "flake-pinning";
  inputs."mt-0_2_0".dir = "nimpkgs/m/mt/0_2_0";
  inputs."mt-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mt-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}