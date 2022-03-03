{
  description = ''A simple task runner. Run tasks and watch file changes with custom paths.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."monit-master".type = "github";
  inputs."monit-master".owner = "riinr";
  inputs."monit-master".repo = "flake-nimble";
  inputs."monit-master".ref = "flake-pinning";
  inputs."monit-master".dir = "nimpkgs/m/monit/master";
  inputs."monit-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monit-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."monit-1_0_0".type = "github";
  inputs."monit-1_0_0".owner = "riinr";
  inputs."monit-1_0_0".repo = "flake-nimble";
  inputs."monit-1_0_0".ref = "flake-pinning";
  inputs."monit-1_0_0".dir = "nimpkgs/m/monit/1_0_0";
  inputs."monit-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monit-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."monit-1_1_0".type = "github";
  inputs."monit-1_1_0".owner = "riinr";
  inputs."monit-1_1_0".repo = "flake-nimble";
  inputs."monit-1_1_0".ref = "flake-pinning";
  inputs."monit-1_1_0".dir = "nimpkgs/m/monit/1_1_0";
  inputs."monit-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monit-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."monit-v1_2_0".type = "github";
  inputs."monit-v1_2_0".owner = "riinr";
  inputs."monit-v1_2_0".repo = "flake-nimble";
  inputs."monit-v1_2_0".ref = "flake-pinning";
  inputs."monit-v1_2_0".dir = "nimpkgs/m/monit/v1_2_0";
  inputs."monit-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monit-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."monit-v1_2_1".type = "github";
  inputs."monit-v1_2_1".owner = "riinr";
  inputs."monit-v1_2_1".repo = "flake-nimble";
  inputs."monit-v1_2_1".ref = "flake-pinning";
  inputs."monit-v1_2_1".dir = "nimpkgs/m/monit/v1_2_1";
  inputs."monit-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monit-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."monit-v1_2_2".type = "github";
  inputs."monit-v1_2_2".owner = "riinr";
  inputs."monit-v1_2_2".repo = "flake-nimble";
  inputs."monit-v1_2_2".ref = "flake-pinning";
  inputs."monit-v1_2_2".dir = "nimpkgs/m/monit/v1_2_2";
  inputs."monit-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monit-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."monit-v1_2_3".type = "github";
  inputs."monit-v1_2_3".owner = "riinr";
  inputs."monit-v1_2_3".repo = "flake-nimble";
  inputs."monit-v1_2_3".ref = "flake-pinning";
  inputs."monit-v1_2_3".dir = "nimpkgs/m/monit/v1_2_3";
  inputs."monit-v1_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monit-v1_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}