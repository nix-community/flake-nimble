{
  description = ''A small but powerful static site generator powered by HastyScribe and min'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."hastysite-master".type = "github";
  inputs."hastysite-master".owner = "riinr";
  inputs."hastysite-master".repo = "flake-nimble";
  inputs."hastysite-master".ref = "flake-pinning";
  inputs."hastysite-master".dir = "nimpkgs/h/hastysite/master";
  inputs."hastysite-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hastysite-0_1_0".type = "github";
  inputs."hastysite-0_1_0".owner = "riinr";
  inputs."hastysite-0_1_0".repo = "flake-nimble";
  inputs."hastysite-0_1_0".ref = "flake-pinning";
  inputs."hastysite-0_1_0".dir = "nimpkgs/h/hastysite/0_1_0";
  inputs."hastysite-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hastysite-v1_0_0".type = "github";
  inputs."hastysite-v1_0_0".owner = "riinr";
  inputs."hastysite-v1_0_0".repo = "flake-nimble";
  inputs."hastysite-v1_0_0".ref = "flake-pinning";
  inputs."hastysite-v1_0_0".dir = "nimpkgs/h/hastysite/v1_0_0";
  inputs."hastysite-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hastysite-v1_0_1".type = "github";
  inputs."hastysite-v1_0_1".owner = "riinr";
  inputs."hastysite-v1_0_1".repo = "flake-nimble";
  inputs."hastysite-v1_0_1".ref = "flake-pinning";
  inputs."hastysite-v1_0_1".dir = "nimpkgs/h/hastysite/v1_0_1";
  inputs."hastysite-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hastysite-v1_1_0".type = "github";
  inputs."hastysite-v1_1_0".owner = "riinr";
  inputs."hastysite-v1_1_0".repo = "flake-nimble";
  inputs."hastysite-v1_1_0".ref = "flake-pinning";
  inputs."hastysite-v1_1_0".dir = "nimpkgs/h/hastysite/v1_1_0";
  inputs."hastysite-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hastysite-v1_2_0".type = "github";
  inputs."hastysite-v1_2_0".owner = "riinr";
  inputs."hastysite-v1_2_0".repo = "flake-nimble";
  inputs."hastysite-v1_2_0".ref = "flake-pinning";
  inputs."hastysite-v1_2_0".dir = "nimpkgs/h/hastysite/v1_2_0";
  inputs."hastysite-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hastysite-v1_2_1".type = "github";
  inputs."hastysite-v1_2_1".owner = "riinr";
  inputs."hastysite-v1_2_1".repo = "flake-nimble";
  inputs."hastysite-v1_2_1".ref = "flake-pinning";
  inputs."hastysite-v1_2_1".dir = "nimpkgs/h/hastysite/v1_2_1";
  inputs."hastysite-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hastysite-v1_2_2".type = "github";
  inputs."hastysite-v1_2_2".owner = "riinr";
  inputs."hastysite-v1_2_2".repo = "flake-nimble";
  inputs."hastysite-v1_2_2".ref = "flake-pinning";
  inputs."hastysite-v1_2_2".dir = "nimpkgs/h/hastysite/v1_2_2";
  inputs."hastysite-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hastysite-v1_3_0".type = "github";
  inputs."hastysite-v1_3_0".owner = "riinr";
  inputs."hastysite-v1_3_0".repo = "flake-nimble";
  inputs."hastysite-v1_3_0".ref = "flake-pinning";
  inputs."hastysite-v1_3_0".dir = "nimpkgs/h/hastysite/v1_3_0";
  inputs."hastysite-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hastysite-v1_3_1".type = "github";
  inputs."hastysite-v1_3_1".owner = "riinr";
  inputs."hastysite-v1_3_1".repo = "flake-nimble";
  inputs."hastysite-v1_3_1".ref = "flake-pinning";
  inputs."hastysite-v1_3_1".dir = "nimpkgs/h/hastysite/v1_3_1";
  inputs."hastysite-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hastysite-v1_3_2".type = "github";
  inputs."hastysite-v1_3_2".owner = "riinr";
  inputs."hastysite-v1_3_2".repo = "flake-nimble";
  inputs."hastysite-v1_3_2".ref = "flake-pinning";
  inputs."hastysite-v1_3_2".dir = "nimpkgs/h/hastysite/v1_3_2";
  inputs."hastysite-v1_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hastysite-v1_3_3".type = "github";
  inputs."hastysite-v1_3_3".owner = "riinr";
  inputs."hastysite-v1_3_3".repo = "flake-nimble";
  inputs."hastysite-v1_3_3".ref = "flake-pinning";
  inputs."hastysite-v1_3_3".dir = "nimpkgs/h/hastysite/v1_3_3";
  inputs."hastysite-v1_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hastysite-v1_3_4".type = "github";
  inputs."hastysite-v1_3_4".owner = "riinr";
  inputs."hastysite-v1_3_4".repo = "flake-nimble";
  inputs."hastysite-v1_3_4".ref = "flake-pinning";
  inputs."hastysite-v1_3_4".dir = "nimpkgs/h/hastysite/v1_3_4";
  inputs."hastysite-v1_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hastysite-v1_3_5".type = "github";
  inputs."hastysite-v1_3_5".owner = "riinr";
  inputs."hastysite-v1_3_5".repo = "flake-nimble";
  inputs."hastysite-v1_3_5".ref = "flake-pinning";
  inputs."hastysite-v1_3_5".dir = "nimpkgs/h/hastysite/v1_3_5";
  inputs."hastysite-v1_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hastysite-v1_3_6".type = "github";
  inputs."hastysite-v1_3_6".owner = "riinr";
  inputs."hastysite-v1_3_6".repo = "flake-nimble";
  inputs."hastysite-v1_3_6".ref = "flake-pinning";
  inputs."hastysite-v1_3_6".dir = "nimpkgs/h/hastysite/v1_3_6";
  inputs."hastysite-v1_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hastysite-v1_3_7".type = "github";
  inputs."hastysite-v1_3_7".owner = "riinr";
  inputs."hastysite-v1_3_7".repo = "flake-nimble";
  inputs."hastysite-v1_3_7".ref = "flake-pinning";
  inputs."hastysite-v1_3_7".dir = "nimpkgs/h/hastysite/v1_3_7";
  inputs."hastysite-v1_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}