{
  description = ''ABI Encoding for Ethereum contracts'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."contractabi-main".type = "github";
  inputs."contractabi-main".owner = "riinr";
  inputs."contractabi-main".repo = "flake-nimble";
  inputs."contractabi-main".ref = "flake-pinning";
  inputs."contractabi-main".dir = "nimpkgs/c/contractabi/main";
  inputs."contractabi-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."contractabi-0_1_0".type = "github";
  inputs."contractabi-0_1_0".owner = "riinr";
  inputs."contractabi-0_1_0".repo = "flake-nimble";
  inputs."contractabi-0_1_0".ref = "flake-pinning";
  inputs."contractabi-0_1_0".dir = "nimpkgs/c/contractabi/0_1_0";
  inputs."contractabi-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."contractabi-0_1_1".type = "github";
  inputs."contractabi-0_1_1".owner = "riinr";
  inputs."contractabi-0_1_1".repo = "flake-nimble";
  inputs."contractabi-0_1_1".ref = "flake-pinning";
  inputs."contractabi-0_1_1".dir = "nimpkgs/c/contractabi/0_1_1";
  inputs."contractabi-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."contractabi-0_2_0".type = "github";
  inputs."contractabi-0_2_0".owner = "riinr";
  inputs."contractabi-0_2_0".repo = "flake-nimble";
  inputs."contractabi-0_2_0".ref = "flake-pinning";
  inputs."contractabi-0_2_0".dir = "nimpkgs/c/contractabi/0_2_0";
  inputs."contractabi-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."contractabi-0_3_0".type = "github";
  inputs."contractabi-0_3_0".owner = "riinr";
  inputs."contractabi-0_3_0".repo = "flake-nimble";
  inputs."contractabi-0_3_0".ref = "flake-pinning";
  inputs."contractabi-0_3_0".dir = "nimpkgs/c/contractabi/0_3_0";
  inputs."contractabi-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."contractabi-0_4_0".type = "github";
  inputs."contractabi-0_4_0".owner = "riinr";
  inputs."contractabi-0_4_0".repo = "flake-nimble";
  inputs."contractabi-0_4_0".ref = "flake-pinning";
  inputs."contractabi-0_4_0".dir = "nimpkgs/c/contractabi/0_4_0";
  inputs."contractabi-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."contractabi-0_4_1".type = "github";
  inputs."contractabi-0_4_1".owner = "riinr";
  inputs."contractabi-0_4_1".repo = "flake-nimble";
  inputs."contractabi-0_4_1".ref = "flake-pinning";
  inputs."contractabi-0_4_1".dir = "nimpkgs/c/contractabi/0_4_1";
  inputs."contractabi-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."contractabi-0_4_2".type = "github";
  inputs."contractabi-0_4_2".owner = "riinr";
  inputs."contractabi-0_4_2".repo = "flake-nimble";
  inputs."contractabi-0_4_2".ref = "flake-pinning";
  inputs."contractabi-0_4_2".dir = "nimpkgs/c/contractabi/0_4_2";
  inputs."contractabi-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}