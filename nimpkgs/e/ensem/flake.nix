{
  description = ''Support for ensemble file format and arithmetic using jackknife/bootstrap propagation of errors'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ensem-master".type = "github";
  inputs."ensem-master".owner = "riinr";
  inputs."ensem-master".repo = "flake-nimble";
  inputs."ensem-master".ref = "flake-pinning";
  inputs."ensem-master".dir = "nimpkgs/e/ensem/master";
  inputs."ensem-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ensem-v1_0_0".type = "github";
  inputs."ensem-v1_0_0".owner = "riinr";
  inputs."ensem-v1_0_0".repo = "flake-nimble";
  inputs."ensem-v1_0_0".ref = "flake-pinning";
  inputs."ensem-v1_0_0".dir = "nimpkgs/e/ensem/v1_0_0";
  inputs."ensem-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ensem-v1_1_0".type = "github";
  inputs."ensem-v1_1_0".owner = "riinr";
  inputs."ensem-v1_1_0".repo = "flake-nimble";
  inputs."ensem-v1_1_0".ref = "flake-pinning";
  inputs."ensem-v1_1_0".dir = "nimpkgs/e/ensem/v1_1_0";
  inputs."ensem-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ensem-v1_2_1".type = "github";
  inputs."ensem-v1_2_1".owner = "riinr";
  inputs."ensem-v1_2_1".repo = "flake-nimble";
  inputs."ensem-v1_2_1".ref = "flake-pinning";
  inputs."ensem-v1_2_1".dir = "nimpkgs/e/ensem/v1_2_1";
  inputs."ensem-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ensem-v1_2_2".type = "github";
  inputs."ensem-v1_2_2".owner = "riinr";
  inputs."ensem-v1_2_2".repo = "flake-nimble";
  inputs."ensem-v1_2_2".ref = "flake-pinning";
  inputs."ensem-v1_2_2".dir = "nimpkgs/e/ensem/v1_2_2";
  inputs."ensem-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ensem-v1_3_0".type = "github";
  inputs."ensem-v1_3_0".owner = "riinr";
  inputs."ensem-v1_3_0".repo = "flake-nimble";
  inputs."ensem-v1_3_0".ref = "flake-pinning";
  inputs."ensem-v1_3_0".dir = "nimpkgs/e/ensem/v1_3_0";
  inputs."ensem-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ensem-v1_3_1".type = "github";
  inputs."ensem-v1_3_1".owner = "riinr";
  inputs."ensem-v1_3_1".repo = "flake-nimble";
  inputs."ensem-v1_3_1".ref = "flake-pinning";
  inputs."ensem-v1_3_1".dir = "nimpkgs/e/ensem/v1_3_1";
  inputs."ensem-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ensem-v1_3_2".type = "github";
  inputs."ensem-v1_3_2".owner = "riinr";
  inputs."ensem-v1_3_2".repo = "flake-nimble";
  inputs."ensem-v1_3_2".ref = "flake-pinning";
  inputs."ensem-v1_3_2".dir = "nimpkgs/e/ensem/v1_3_2";
  inputs."ensem-v1_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-v1_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ensem-v1_4_0".type = "github";
  inputs."ensem-v1_4_0".owner = "riinr";
  inputs."ensem-v1_4_0".repo = "flake-nimble";
  inputs."ensem-v1_4_0".ref = "flake-pinning";
  inputs."ensem-v1_4_0".dir = "nimpkgs/e/ensem/v1_4_0";
  inputs."ensem-v1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-v1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}