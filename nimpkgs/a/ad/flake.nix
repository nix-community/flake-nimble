{
  description = ''A simple RPN calculator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ad-master".type = "github";
  inputs."ad-master".owner = "riinr";
  inputs."ad-master".repo = "flake-nimble";
  inputs."ad-master".ref = "flake-pinning";
  inputs."ad-master".dir = "nimpkgs/a/ad/master";
  inputs."ad-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ad-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ad-0_6_3".type = "github";
  inputs."ad-0_6_3".owner = "riinr";
  inputs."ad-0_6_3".repo = "flake-nimble";
  inputs."ad-0_6_3".ref = "flake-pinning";
  inputs."ad-0_6_3".dir = "nimpkgs/a/ad/0_6_3";
  inputs."ad-0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ad-0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ad-0_6_4".type = "github";
  inputs."ad-0_6_4".owner = "riinr";
  inputs."ad-0_6_4".repo = "flake-nimble";
  inputs."ad-0_6_4".ref = "flake-pinning";
  inputs."ad-0_6_4".dir = "nimpkgs/a/ad/0_6_4";
  inputs."ad-0_6_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ad-0_6_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ad-0_7".type = "github";
  inputs."ad-0_7".owner = "riinr";
  inputs."ad-0_7".repo = "flake-nimble";
  inputs."ad-0_7".ref = "flake-pinning";
  inputs."ad-0_7".dir = "nimpkgs/a/ad/0_7";
  inputs."ad-0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ad-0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ad-0_7_1".type = "github";
  inputs."ad-0_7_1".owner = "riinr";
  inputs."ad-0_7_1".repo = "flake-nimble";
  inputs."ad-0_7_1".ref = "flake-pinning";
  inputs."ad-0_7_1".dir = "nimpkgs/a/ad/0_7_1";
  inputs."ad-0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ad-0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ad-0_7_2".type = "github";
  inputs."ad-0_7_2".owner = "riinr";
  inputs."ad-0_7_2".repo = "flake-nimble";
  inputs."ad-0_7_2".ref = "flake-pinning";
  inputs."ad-0_7_2".dir = "nimpkgs/a/ad/0_7_2";
  inputs."ad-0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ad-0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ad-0_7_4".type = "github";
  inputs."ad-0_7_4".owner = "riinr";
  inputs."ad-0_7_4".repo = "flake-nimble";
  inputs."ad-0_7_4".ref = "flake-pinning";
  inputs."ad-0_7_4".dir = "nimpkgs/a/ad/0_7_4";
  inputs."ad-0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ad-0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}