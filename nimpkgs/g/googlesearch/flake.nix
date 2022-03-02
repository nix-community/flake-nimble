{
  description = ''library for scraping google search results'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."googlesearch-master".type = "github";
  inputs."googlesearch-master".owner = "riinr";
  inputs."googlesearch-master".repo = "flake-nimble";
  inputs."googlesearch-master".ref = "flake-pinning";
  inputs."googlesearch-master".dir = "nimpkgs/g/googlesearch/master";
  inputs."googlesearch-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googlesearch-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."googlesearch-v0_1_0".type = "github";
  inputs."googlesearch-v0_1_0".owner = "riinr";
  inputs."googlesearch-v0_1_0".repo = "flake-nimble";
  inputs."googlesearch-v0_1_0".ref = "flake-pinning";
  inputs."googlesearch-v0_1_0".dir = "nimpkgs/g/googlesearch/v0_1_0";
  inputs."googlesearch-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googlesearch-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."googlesearch-v0_1_1".type = "github";
  inputs."googlesearch-v0_1_1".owner = "riinr";
  inputs."googlesearch-v0_1_1".repo = "flake-nimble";
  inputs."googlesearch-v0_1_1".ref = "flake-pinning";
  inputs."googlesearch-v0_1_1".dir = "nimpkgs/g/googlesearch/v0_1_1";
  inputs."googlesearch-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googlesearch-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."googlesearch-v0_2_0".type = "github";
  inputs."googlesearch-v0_2_0".owner = "riinr";
  inputs."googlesearch-v0_2_0".repo = "flake-nimble";
  inputs."googlesearch-v0_2_0".ref = "flake-pinning";
  inputs."googlesearch-v0_2_0".dir = "nimpkgs/g/googlesearch/v0_2_0";
  inputs."googlesearch-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googlesearch-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."googlesearch-v0_3_0".type = "github";
  inputs."googlesearch-v0_3_0".owner = "riinr";
  inputs."googlesearch-v0_3_0".repo = "flake-nimble";
  inputs."googlesearch-v0_3_0".ref = "flake-pinning";
  inputs."googlesearch-v0_3_0".dir = "nimpkgs/g/googlesearch/v0_3_0";
  inputs."googlesearch-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googlesearch-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."googlesearch-v0_3_1".type = "github";
  inputs."googlesearch-v0_3_1".owner = "riinr";
  inputs."googlesearch-v0_3_1".repo = "flake-nimble";
  inputs."googlesearch-v0_3_1".ref = "flake-pinning";
  inputs."googlesearch-v0_3_1".dir = "nimpkgs/g/googlesearch/v0_3_1";
  inputs."googlesearch-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googlesearch-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."googlesearch-v0_4_0".type = "github";
  inputs."googlesearch-v0_4_0".owner = "riinr";
  inputs."googlesearch-v0_4_0".repo = "flake-nimble";
  inputs."googlesearch-v0_4_0".ref = "flake-pinning";
  inputs."googlesearch-v0_4_0".dir = "nimpkgs/g/googlesearch/v0_4_0";
  inputs."googlesearch-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googlesearch-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."googlesearch-v0_4_1".type = "github";
  inputs."googlesearch-v0_4_1".owner = "riinr";
  inputs."googlesearch-v0_4_1".repo = "flake-nimble";
  inputs."googlesearch-v0_4_1".ref = "flake-pinning";
  inputs."googlesearch-v0_4_1".dir = "nimpkgs/g/googlesearch/v0_4_1";
  inputs."googlesearch-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googlesearch-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}