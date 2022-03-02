{
  description = ''Indie assembler/linker for Android's Dalvik VM .dex & .apk files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."dali-master".type = "github";
  inputs."dali-master".owner = "riinr";
  inputs."dali-master".repo = "flake-nimble";
  inputs."dali-master".ref = "flake-pinning";
  inputs."dali-master".dir = "nimpkgs/d/dali/master";
  inputs."dali-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dali-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dali-v0_1_0".type = "github";
  inputs."dali-v0_1_0".owner = "riinr";
  inputs."dali-v0_1_0".repo = "flake-nimble";
  inputs."dali-v0_1_0".ref = "flake-pinning";
  inputs."dali-v0_1_0".dir = "nimpkgs/d/dali/v0_1_0";
  inputs."dali-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dali-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dali-v0_2_0".type = "github";
  inputs."dali-v0_2_0".owner = "riinr";
  inputs."dali-v0_2_0".repo = "flake-nimble";
  inputs."dali-v0_2_0".ref = "flake-pinning";
  inputs."dali-v0_2_0".dir = "nimpkgs/d/dali/v0_2_0";
  inputs."dali-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dali-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dali-v0_2_1".type = "github";
  inputs."dali-v0_2_1".owner = "riinr";
  inputs."dali-v0_2_1".repo = "flake-nimble";
  inputs."dali-v0_2_1".ref = "flake-pinning";
  inputs."dali-v0_2_1".dir = "nimpkgs/d/dali/v0_2_1";
  inputs."dali-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dali-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dali-v0_2_2".type = "github";
  inputs."dali-v0_2_2".owner = "riinr";
  inputs."dali-v0_2_2".repo = "flake-nimble";
  inputs."dali-v0_2_2".ref = "flake-pinning";
  inputs."dali-v0_2_2".dir = "nimpkgs/d/dali/v0_2_2";
  inputs."dali-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dali-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dali-v0_2_3".type = "github";
  inputs."dali-v0_2_3".owner = "riinr";
  inputs."dali-v0_2_3".repo = "flake-nimble";
  inputs."dali-v0_2_3".ref = "flake-pinning";
  inputs."dali-v0_2_3".dir = "nimpkgs/d/dali/v0_2_3";
  inputs."dali-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dali-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dali-v0_3_0".type = "github";
  inputs."dali-v0_3_0".owner = "riinr";
  inputs."dali-v0_3_0".repo = "flake-nimble";
  inputs."dali-v0_3_0".ref = "flake-pinning";
  inputs."dali-v0_3_0".dir = "nimpkgs/d/dali/v0_3_0";
  inputs."dali-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dali-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dali-v0_4_0".type = "github";
  inputs."dali-v0_4_0".owner = "riinr";
  inputs."dali-v0_4_0".repo = "flake-nimble";
  inputs."dali-v0_4_0".ref = "flake-pinning";
  inputs."dali-v0_4_0".dir = "nimpkgs/d/dali/v0_4_0";
  inputs."dali-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dali-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}