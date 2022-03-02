{
  description = ''AST for various languages'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."hasts-master".type = "github";
  inputs."hasts-master".owner = "riinr";
  inputs."hasts-master".repo = "flake-nimble";
  inputs."hasts-master".ref = "flake-pinning";
  inputs."hasts-master".dir = "nimpkgs/h/hasts/master";
  inputs."hasts-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hasts-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hasts-v0_1_1".type = "github";
  inputs."hasts-v0_1_1".owner = "riinr";
  inputs."hasts-v0_1_1".repo = "flake-nimble";
  inputs."hasts-v0_1_1".ref = "flake-pinning";
  inputs."hasts-v0_1_1".dir = "nimpkgs/h/hasts/v0_1_1";
  inputs."hasts-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hasts-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hasts-v0_1_2".type = "github";
  inputs."hasts-v0_1_2".owner = "riinr";
  inputs."hasts-v0_1_2".repo = "flake-nimble";
  inputs."hasts-v0_1_2".ref = "flake-pinning";
  inputs."hasts-v0_1_2".dir = "nimpkgs/h/hasts/v0_1_2";
  inputs."hasts-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hasts-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hasts-v0_1_3".type = "github";
  inputs."hasts-v0_1_3".owner = "riinr";
  inputs."hasts-v0_1_3".repo = "flake-nimble";
  inputs."hasts-v0_1_3".ref = "flake-pinning";
  inputs."hasts-v0_1_3".dir = "nimpkgs/h/hasts/v0_1_3";
  inputs."hasts-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hasts-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hasts-v0_1_4".type = "github";
  inputs."hasts-v0_1_4".owner = "riinr";
  inputs."hasts-v0_1_4".repo = "flake-nimble";
  inputs."hasts-v0_1_4".ref = "flake-pinning";
  inputs."hasts-v0_1_4".dir = "nimpkgs/h/hasts/v0_1_4";
  inputs."hasts-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hasts-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hasts-v0_1_5".type = "github";
  inputs."hasts-v0_1_5".owner = "riinr";
  inputs."hasts-v0_1_5".repo = "flake-nimble";
  inputs."hasts-v0_1_5".ref = "flake-pinning";
  inputs."hasts-v0_1_5".dir = "nimpkgs/h/hasts/v0_1_5";
  inputs."hasts-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hasts-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hasts-v0_1_6".type = "github";
  inputs."hasts-v0_1_6".owner = "riinr";
  inputs."hasts-v0_1_6".repo = "flake-nimble";
  inputs."hasts-v0_1_6".ref = "flake-pinning";
  inputs."hasts-v0_1_6".dir = "nimpkgs/h/hasts/v0_1_6";
  inputs."hasts-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hasts-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}