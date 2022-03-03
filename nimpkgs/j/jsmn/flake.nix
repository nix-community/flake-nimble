{
  description = ''Jsmn - a world fastest JSON parser - in pure Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."jsmn-master".type = "github";
  inputs."jsmn-master".owner = "riinr";
  inputs."jsmn-master".repo = "flake-nimble";
  inputs."jsmn-master".ref = "flake-pinning";
  inputs."jsmn-master".dir = "nimpkgs/j/jsmn/master";
  inputs."jsmn-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jsmn-0_1_0".type = "github";
  inputs."jsmn-0_1_0".owner = "riinr";
  inputs."jsmn-0_1_0".repo = "flake-nimble";
  inputs."jsmn-0_1_0".ref = "flake-pinning";
  inputs."jsmn-0_1_0".dir = "nimpkgs/j/jsmn/0_1_0";
  inputs."jsmn-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jsmn-0_1_1".type = "github";
  inputs."jsmn-0_1_1".owner = "riinr";
  inputs."jsmn-0_1_1".repo = "flake-nimble";
  inputs."jsmn-0_1_1".ref = "flake-pinning";
  inputs."jsmn-0_1_1".dir = "nimpkgs/j/jsmn/0_1_1";
  inputs."jsmn-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jsmn-0_1_2".type = "github";
  inputs."jsmn-0_1_2".owner = "riinr";
  inputs."jsmn-0_1_2".repo = "flake-nimble";
  inputs."jsmn-0_1_2".ref = "flake-pinning";
  inputs."jsmn-0_1_2".dir = "nimpkgs/j/jsmn/0_1_2";
  inputs."jsmn-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jsmn-0_1_3".type = "github";
  inputs."jsmn-0_1_3".owner = "riinr";
  inputs."jsmn-0_1_3".repo = "flake-nimble";
  inputs."jsmn-0_1_3".ref = "flake-pinning";
  inputs."jsmn-0_1_3".dir = "nimpkgs/j/jsmn/0_1_3";
  inputs."jsmn-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jsmn-0_1_4".type = "github";
  inputs."jsmn-0_1_4".owner = "riinr";
  inputs."jsmn-0_1_4".repo = "flake-nimble";
  inputs."jsmn-0_1_4".ref = "flake-pinning";
  inputs."jsmn-0_1_4".dir = "nimpkgs/j/jsmn/0_1_4";
  inputs."jsmn-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jsmn-0_1_5".type = "github";
  inputs."jsmn-0_1_5".owner = "riinr";
  inputs."jsmn-0_1_5".repo = "flake-nimble";
  inputs."jsmn-0_1_5".ref = "flake-pinning";
  inputs."jsmn-0_1_5".dir = "nimpkgs/j/jsmn/0_1_5";
  inputs."jsmn-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jsmn-0_1_6".type = "github";
  inputs."jsmn-0_1_6".owner = "riinr";
  inputs."jsmn-0_1_6".repo = "flake-nimble";
  inputs."jsmn-0_1_6".ref = "flake-pinning";
  inputs."jsmn-0_1_6".dir = "nimpkgs/j/jsmn/0_1_6";
  inputs."jsmn-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jsmn-0_2".type = "github";
  inputs."jsmn-0_2".owner = "riinr";
  inputs."jsmn-0_2".repo = "flake-nimble";
  inputs."jsmn-0_2".ref = "flake-pinning";
  inputs."jsmn-0_2".dir = "nimpkgs/j/jsmn/0_2";
  inputs."jsmn-0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}