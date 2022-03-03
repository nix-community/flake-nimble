{
  description = ''Nim module/thread initialisation ordering library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."moduleinit-master".type = "github";
  inputs."moduleinit-master".owner = "riinr";
  inputs."moduleinit-master".repo = "flake-nimble";
  inputs."moduleinit-master".ref = "flake-pinning";
  inputs."moduleinit-master".dir = "nimpkgs/m/moduleinit/master";
  inputs."moduleinit-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moduleinit-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moduleinit-v0_1_0".type = "github";
  inputs."moduleinit-v0_1_0".owner = "riinr";
  inputs."moduleinit-v0_1_0".repo = "flake-nimble";
  inputs."moduleinit-v0_1_0".ref = "flake-pinning";
  inputs."moduleinit-v0_1_0".dir = "nimpkgs/m/moduleinit/v0_1_0";
  inputs."moduleinit-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moduleinit-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moduleinit-v0_2_0".type = "github";
  inputs."moduleinit-v0_2_0".owner = "riinr";
  inputs."moduleinit-v0_2_0".repo = "flake-nimble";
  inputs."moduleinit-v0_2_0".ref = "flake-pinning";
  inputs."moduleinit-v0_2_0".dir = "nimpkgs/m/moduleinit/v0_2_0";
  inputs."moduleinit-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moduleinit-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moduleinit-v0_3_0".type = "github";
  inputs."moduleinit-v0_3_0".owner = "riinr";
  inputs."moduleinit-v0_3_0".repo = "flake-nimble";
  inputs."moduleinit-v0_3_0".ref = "flake-pinning";
  inputs."moduleinit-v0_3_0".dir = "nimpkgs/m/moduleinit/v0_3_0";
  inputs."moduleinit-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moduleinit-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moduleinit-v0_4_0".type = "github";
  inputs."moduleinit-v0_4_0".owner = "riinr";
  inputs."moduleinit-v0_4_0".repo = "flake-nimble";
  inputs."moduleinit-v0_4_0".ref = "flake-pinning";
  inputs."moduleinit-v0_4_0".dir = "nimpkgs/m/moduleinit/v0_4_0";
  inputs."moduleinit-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moduleinit-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}