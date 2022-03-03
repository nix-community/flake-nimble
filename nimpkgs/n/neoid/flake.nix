{
  description = ''Nim implementation of NanoID, a tiny, secure, URL-friendly, unique string ID generator. Works with Linux and Windows!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."neoid-master".type = "github";
  inputs."neoid-master".owner = "riinr";
  inputs."neoid-master".repo = "flake-nimble";
  inputs."neoid-master".ref = "flake-pinning";
  inputs."neoid-master".dir = "nimpkgs/n/neoid/master";
  inputs."neoid-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neoid-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."neoid-0_3_0".type = "github";
  inputs."neoid-0_3_0".owner = "riinr";
  inputs."neoid-0_3_0".repo = "flake-nimble";
  inputs."neoid-0_3_0".ref = "flake-pinning";
  inputs."neoid-0_3_0".dir = "nimpkgs/n/neoid/0_3_0";
  inputs."neoid-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neoid-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."neoid-0_3_1".type = "github";
  inputs."neoid-0_3_1".owner = "riinr";
  inputs."neoid-0_3_1".repo = "flake-nimble";
  inputs."neoid-0_3_1".ref = "flake-pinning";
  inputs."neoid-0_3_1".dir = "nimpkgs/n/neoid/0_3_1";
  inputs."neoid-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neoid-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."neoid-0_3_2".type = "github";
  inputs."neoid-0_3_2".owner = "riinr";
  inputs."neoid-0_3_2".repo = "flake-nimble";
  inputs."neoid-0_3_2".ref = "flake-pinning";
  inputs."neoid-0_3_2".dir = "nimpkgs/n/neoid/0_3_2";
  inputs."neoid-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neoid-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."neoid-v0_1_0".type = "github";
  inputs."neoid-v0_1_0".owner = "riinr";
  inputs."neoid-v0_1_0".repo = "flake-nimble";
  inputs."neoid-v0_1_0".ref = "flake-pinning";
  inputs."neoid-v0_1_0".dir = "nimpkgs/n/neoid/v0_1_0";
  inputs."neoid-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neoid-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."neoid-v0_2_0".type = "github";
  inputs."neoid-v0_2_0".owner = "riinr";
  inputs."neoid-v0_2_0".repo = "flake-nimble";
  inputs."neoid-v0_2_0".ref = "flake-pinning";
  inputs."neoid-v0_2_0".dir = "nimpkgs/n/neoid/v0_2_0";
  inputs."neoid-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neoid-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}