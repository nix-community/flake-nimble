{
  description = ''High level xml library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."xmltools-master".type = "github";
  inputs."xmltools-master".owner = "riinr";
  inputs."xmltools-master".repo = "flake-nimble";
  inputs."xmltools-master".ref = "flake-pinning";
  inputs."xmltools-master".dir = "nimpkgs/x/xmltools/master";
  inputs."xmltools-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xmltools-v0_0_1".type = "github";
  inputs."xmltools-v0_0_1".owner = "riinr";
  inputs."xmltools-v0_0_1".repo = "flake-nimble";
  inputs."xmltools-v0_0_1".ref = "flake-pinning";
  inputs."xmltools-v0_0_1".dir = "nimpkgs/x/xmltools/v0_0_1";
  inputs."xmltools-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xmltools-v0_0_2".type = "github";
  inputs."xmltools-v0_0_2".owner = "riinr";
  inputs."xmltools-v0_0_2".repo = "flake-nimble";
  inputs."xmltools-v0_0_2".ref = "flake-pinning";
  inputs."xmltools-v0_0_2".dir = "nimpkgs/x/xmltools/v0_0_2";
  inputs."xmltools-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xmltools-v0_0_3".type = "github";
  inputs."xmltools-v0_0_3".owner = "riinr";
  inputs."xmltools-v0_0_3".repo = "flake-nimble";
  inputs."xmltools-v0_0_3".ref = "flake-pinning";
  inputs."xmltools-v0_0_3".dir = "nimpkgs/x/xmltools/v0_0_3";
  inputs."xmltools-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xmltools-v0_1_0".type = "github";
  inputs."xmltools-v0_1_0".owner = "riinr";
  inputs."xmltools-v0_1_0".repo = "flake-nimble";
  inputs."xmltools-v0_1_0".ref = "flake-pinning";
  inputs."xmltools-v0_1_0".dir = "nimpkgs/x/xmltools/v0_1_0";
  inputs."xmltools-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xmltools-v0_1_1".type = "github";
  inputs."xmltools-v0_1_1".owner = "riinr";
  inputs."xmltools-v0_1_1".repo = "flake-nimble";
  inputs."xmltools-v0_1_1".ref = "flake-pinning";
  inputs."xmltools-v0_1_1".dir = "nimpkgs/x/xmltools/v0_1_1";
  inputs."xmltools-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xmltools-v0_1_2".type = "github";
  inputs."xmltools-v0_1_2".owner = "riinr";
  inputs."xmltools-v0_1_2".repo = "flake-nimble";
  inputs."xmltools-v0_1_2".ref = "flake-pinning";
  inputs."xmltools-v0_1_2".dir = "nimpkgs/x/xmltools/v0_1_2";
  inputs."xmltools-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xmltools-v0_1_3".type = "github";
  inputs."xmltools-v0_1_3".owner = "riinr";
  inputs."xmltools-v0_1_3".repo = "flake-nimble";
  inputs."xmltools-v0_1_3".ref = "flake-pinning";
  inputs."xmltools-v0_1_3".dir = "nimpkgs/x/xmltools/v0_1_3";
  inputs."xmltools-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xmltools-v0_1_4".type = "github";
  inputs."xmltools-v0_1_4".owner = "riinr";
  inputs."xmltools-v0_1_4".repo = "flake-nimble";
  inputs."xmltools-v0_1_4".ref = "flake-pinning";
  inputs."xmltools-v0_1_4".dir = "nimpkgs/x/xmltools/v0_1_4";
  inputs."xmltools-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xmltools-v0_1_5".type = "github";
  inputs."xmltools-v0_1_5".owner = "riinr";
  inputs."xmltools-v0_1_5".repo = "flake-nimble";
  inputs."xmltools-v0_1_5".ref = "flake-pinning";
  inputs."xmltools-v0_1_5".dir = "nimpkgs/x/xmltools/v0_1_5";
  inputs."xmltools-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}