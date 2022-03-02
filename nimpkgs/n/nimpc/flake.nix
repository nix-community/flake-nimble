{
  description = ''Secure multi-party computation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimpc-master".type = "github";
  inputs."nimpc-master".owner = "riinr";
  inputs."nimpc-master".repo = "flake-nimble";
  inputs."nimpc-master".ref = "flake-pinning";
  inputs."nimpc-master".dir = "nimpkgs/n/nimpc/master";
  inputs."nimpc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimpc-v0_1_0".type = "github";
  inputs."nimpc-v0_1_0".owner = "riinr";
  inputs."nimpc-v0_1_0".repo = "flake-nimble";
  inputs."nimpc-v0_1_0".ref = "flake-pinning";
  inputs."nimpc-v0_1_0".dir = "nimpkgs/n/nimpc/v0_1_0";
  inputs."nimpc-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpc-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimpc-v0_2_0".type = "github";
  inputs."nimpc-v0_2_0".owner = "riinr";
  inputs."nimpc-v0_2_0".repo = "flake-nimble";
  inputs."nimpc-v0_2_0".ref = "flake-pinning";
  inputs."nimpc-v0_2_0".dir = "nimpkgs/n/nimpc/v0_2_0";
  inputs."nimpc-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpc-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimpc-v0_3_0".type = "github";
  inputs."nimpc-v0_3_0".owner = "riinr";
  inputs."nimpc-v0_3_0".repo = "flake-nimble";
  inputs."nimpc-v0_3_0".ref = "flake-pinning";
  inputs."nimpc-v0_3_0".dir = "nimpkgs/n/nimpc/v0_3_0";
  inputs."nimpc-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpc-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimpc-v0_4_0".type = "github";
  inputs."nimpc-v0_4_0".owner = "riinr";
  inputs."nimpc-v0_4_0".repo = "flake-nimble";
  inputs."nimpc-v0_4_0".ref = "flake-pinning";
  inputs."nimpc-v0_4_0".dir = "nimpkgs/n/nimpc/v0_4_0";
  inputs."nimpc-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpc-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimpc-v0_4_1".type = "github";
  inputs."nimpc-v0_4_1".owner = "riinr";
  inputs."nimpc-v0_4_1".repo = "flake-nimble";
  inputs."nimpc-v0_4_1".ref = "flake-pinning";
  inputs."nimpc-v0_4_1".dir = "nimpkgs/n/nimpc/v0_4_1";
  inputs."nimpc-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpc-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}