{
  description = ''Useful Variant Type and Powerful Pattern Matching for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."matsuri-master".type = "github";
  inputs."matsuri-master".owner = "riinr";
  inputs."matsuri-master".repo = "flake-nimble";
  inputs."matsuri-master".ref = "flake-pinning";
  inputs."matsuri-master".dir = "nimpkgs/m/matsuri/master";
  inputs."matsuri-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matsuri-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."matsuri-v0_1_0".type = "github";
  inputs."matsuri-v0_1_0".owner = "riinr";
  inputs."matsuri-v0_1_0".repo = "flake-nimble";
  inputs."matsuri-v0_1_0".ref = "flake-pinning";
  inputs."matsuri-v0_1_0".dir = "nimpkgs/m/matsuri/v0_1_0";
  inputs."matsuri-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matsuri-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."matsuri-v0_2_0".type = "github";
  inputs."matsuri-v0_2_0".owner = "riinr";
  inputs."matsuri-v0_2_0".repo = "flake-nimble";
  inputs."matsuri-v0_2_0".ref = "flake-pinning";
  inputs."matsuri-v0_2_0".dir = "nimpkgs/m/matsuri/v0_2_0";
  inputs."matsuri-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matsuri-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."matsuri-v0_3_0".type = "github";
  inputs."matsuri-v0_3_0".owner = "riinr";
  inputs."matsuri-v0_3_0".repo = "flake-nimble";
  inputs."matsuri-v0_3_0".ref = "flake-pinning";
  inputs."matsuri-v0_3_0".dir = "nimpkgs/m/matsuri/v0_3_0";
  inputs."matsuri-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matsuri-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}