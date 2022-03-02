{
  description = ''Kombinator is a tool to generate commands line from parameters combination from a config file.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."kombinator-develop".type = "github";
  inputs."kombinator-develop".owner = "riinr";
  inputs."kombinator-develop".repo = "flake-nimble";
  inputs."kombinator-develop".ref = "flake-pinning";
  inputs."kombinator-develop".dir = "nimpkgs/k/kombinator/develop";
  inputs."kombinator-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."kombinator-master".type = "github";
  inputs."kombinator-master".owner = "riinr";
  inputs."kombinator-master".repo = "flake-nimble";
  inputs."kombinator-master".ref = "flake-pinning";
  inputs."kombinator-master".dir = "nimpkgs/k/kombinator/master";
  inputs."kombinator-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."kombinator-1_0_0".type = "github";
  inputs."kombinator-1_0_0".owner = "riinr";
  inputs."kombinator-1_0_0".repo = "flake-nimble";
  inputs."kombinator-1_0_0".ref = "flake-pinning";
  inputs."kombinator-1_0_0".dir = "nimpkgs/k/kombinator/1_0_0";
  inputs."kombinator-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."kombinator-1_0_1".type = "github";
  inputs."kombinator-1_0_1".owner = "riinr";
  inputs."kombinator-1_0_1".repo = "flake-nimble";
  inputs."kombinator-1_0_1".ref = "flake-pinning";
  inputs."kombinator-1_0_1".dir = "nimpkgs/k/kombinator/1_0_1";
  inputs."kombinator-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."kombinator-1_0_2".type = "github";
  inputs."kombinator-1_0_2".owner = "riinr";
  inputs."kombinator-1_0_2".repo = "flake-nimble";
  inputs."kombinator-1_0_2".ref = "flake-pinning";
  inputs."kombinator-1_0_2".dir = "nimpkgs/k/kombinator/1_0_2";
  inputs."kombinator-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."kombinator-1_1_0".type = "github";
  inputs."kombinator-1_1_0".owner = "riinr";
  inputs."kombinator-1_1_0".repo = "flake-nimble";
  inputs."kombinator-1_1_0".ref = "flake-pinning";
  inputs."kombinator-1_1_0".dir = "nimpkgs/k/kombinator/1_1_0";
  inputs."kombinator-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."kombinator-1_2_0".type = "github";
  inputs."kombinator-1_2_0".owner = "riinr";
  inputs."kombinator-1_2_0".repo = "flake-nimble";
  inputs."kombinator-1_2_0".ref = "flake-pinning";
  inputs."kombinator-1_2_0".dir = "nimpkgs/k/kombinator/1_2_0";
  inputs."kombinator-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."kombinator-1_3_0".type = "github";
  inputs."kombinator-1_3_0".owner = "riinr";
  inputs."kombinator-1_3_0".repo = "flake-nimble";
  inputs."kombinator-1_3_0".ref = "flake-pinning";
  inputs."kombinator-1_3_0".dir = "nimpkgs/k/kombinator/1_3_0";
  inputs."kombinator-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."kombinator-1_3_1".type = "github";
  inputs."kombinator-1_3_1".owner = "riinr";
  inputs."kombinator-1_3_1".repo = "flake-nimble";
  inputs."kombinator-1_3_1".ref = "flake-pinning";
  inputs."kombinator-1_3_1".dir = "nimpkgs/k/kombinator/1_3_1";
  inputs."kombinator-1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}