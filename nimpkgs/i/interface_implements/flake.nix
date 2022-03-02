{
  description = ''implements macro creates toInterface proc.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."interface_implements-main".type = "github";
  inputs."interface_implements-main".owner = "riinr";
  inputs."interface_implements-main".repo = "flake-nimble";
  inputs."interface_implements-main".ref = "flake-pinning";
  inputs."interface_implements-main".dir = "nimpkgs/i/interface_implements/main";
  inputs."interface_implements-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."interface_implements-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."interface_implements-0_1_0".type = "github";
  inputs."interface_implements-0_1_0".owner = "riinr";
  inputs."interface_implements-0_1_0".repo = "flake-nimble";
  inputs."interface_implements-0_1_0".ref = "flake-pinning";
  inputs."interface_implements-0_1_0".dir = "nimpkgs/i/interface_implements/0_1_0";
  inputs."interface_implements-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."interface_implements-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."interface_implements-0_2_0".type = "github";
  inputs."interface_implements-0_2_0".owner = "riinr";
  inputs."interface_implements-0_2_0".repo = "flake-nimble";
  inputs."interface_implements-0_2_0".ref = "flake-pinning";
  inputs."interface_implements-0_2_0".dir = "nimpkgs/i/interface_implements/0_2_0";
  inputs."interface_implements-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."interface_implements-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."interface_implements-0_2_1".type = "github";
  inputs."interface_implements-0_2_1".owner = "riinr";
  inputs."interface_implements-0_2_1".repo = "flake-nimble";
  inputs."interface_implements-0_2_1".ref = "flake-pinning";
  inputs."interface_implements-0_2_1".dir = "nimpkgs/i/interface_implements/0_2_1";
  inputs."interface_implements-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."interface_implements-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."interface_implements-v0_2_2".type = "github";
  inputs."interface_implements-v0_2_2".owner = "riinr";
  inputs."interface_implements-v0_2_2".repo = "flake-nimble";
  inputs."interface_implements-v0_2_2".ref = "flake-pinning";
  inputs."interface_implements-v0_2_2".dir = "nimpkgs/i/interface_implements/v0_2_2";
  inputs."interface_implements-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."interface_implements-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}