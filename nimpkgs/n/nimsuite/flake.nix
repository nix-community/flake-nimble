{
  description = ''a simple test framework for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimsuite-develop".type = "github";
  inputs."nimsuite-develop".owner = "riinr";
  inputs."nimsuite-develop".repo = "flake-nimble";
  inputs."nimsuite-develop".ref = "flake-pinning";
  inputs."nimsuite-develop".dir = "nimpkgs/n/nimsuite/develop";
  inputs."nimsuite-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsuite-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimsuite-master".type = "github";
  inputs."nimsuite-master".owner = "riinr";
  inputs."nimsuite-master".repo = "flake-nimble";
  inputs."nimsuite-master".ref = "flake-pinning";
  inputs."nimsuite-master".dir = "nimpkgs/n/nimsuite/master";
  inputs."nimsuite-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsuite-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimsuite-0_1_0".type = "github";
  inputs."nimsuite-0_1_0".owner = "riinr";
  inputs."nimsuite-0_1_0".repo = "flake-nimble";
  inputs."nimsuite-0_1_0".ref = "flake-pinning";
  inputs."nimsuite-0_1_0".dir = "nimpkgs/n/nimsuite/0_1_0";
  inputs."nimsuite-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsuite-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}