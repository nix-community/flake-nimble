{
  description = ''A Nim mini DSL to execute shell commands'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."shell-master".type = "github";
  inputs."shell-master".owner = "riinr";
  inputs."shell-master".repo = "flake-nimble";
  inputs."shell-master".ref = "flake-pinning";
  inputs."shell-master".dir = "nimpkgs/s/shell/master";
  inputs."shell-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shell-v0_1_0".type = "github";
  inputs."shell-v0_1_0".owner = "riinr";
  inputs."shell-v0_1_0".repo = "flake-nimble";
  inputs."shell-v0_1_0".ref = "flake-pinning";
  inputs."shell-v0_1_0".dir = "nimpkgs/s/shell/v0_1_0";
  inputs."shell-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shell-v0_1_1".type = "github";
  inputs."shell-v0_1_1".owner = "riinr";
  inputs."shell-v0_1_1".repo = "flake-nimble";
  inputs."shell-v0_1_1".ref = "flake-pinning";
  inputs."shell-v0_1_1".dir = "nimpkgs/s/shell/v0_1_1";
  inputs."shell-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shell-v0_1_2".type = "github";
  inputs."shell-v0_1_2".owner = "riinr";
  inputs."shell-v0_1_2".repo = "flake-nimble";
  inputs."shell-v0_1_2".ref = "flake-pinning";
  inputs."shell-v0_1_2".dir = "nimpkgs/s/shell/v0_1_2";
  inputs."shell-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shell-v0_1_3".type = "github";
  inputs."shell-v0_1_3".owner = "riinr";
  inputs."shell-v0_1_3".repo = "flake-nimble";
  inputs."shell-v0_1_3".ref = "flake-pinning";
  inputs."shell-v0_1_3".dir = "nimpkgs/s/shell/v0_1_3";
  inputs."shell-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shell-v0_2_0".type = "github";
  inputs."shell-v0_2_0".owner = "riinr";
  inputs."shell-v0_2_0".repo = "flake-nimble";
  inputs."shell-v0_2_0".ref = "flake-pinning";
  inputs."shell-v0_2_0".dir = "nimpkgs/s/shell/v0_2_0";
  inputs."shell-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shell-v0_2_1".type = "github";
  inputs."shell-v0_2_1".owner = "riinr";
  inputs."shell-v0_2_1".repo = "flake-nimble";
  inputs."shell-v0_2_1".ref = "flake-pinning";
  inputs."shell-v0_2_1".dir = "nimpkgs/s/shell/v0_2_1";
  inputs."shell-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shell-v0_2_2".type = "github";
  inputs."shell-v0_2_2".owner = "riinr";
  inputs."shell-v0_2_2".repo = "flake-nimble";
  inputs."shell-v0_2_2".ref = "flake-pinning";
  inputs."shell-v0_2_2".dir = "nimpkgs/s/shell/v0_2_2";
  inputs."shell-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shell-v0_2_3".type = "github";
  inputs."shell-v0_2_3".owner = "riinr";
  inputs."shell-v0_2_3".repo = "flake-nimble";
  inputs."shell-v0_2_3".ref = "flake-pinning";
  inputs."shell-v0_2_3".dir = "nimpkgs/s/shell/v0_2_3";
  inputs."shell-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shell-v0_3_0".type = "github";
  inputs."shell-v0_3_0".owner = "riinr";
  inputs."shell-v0_3_0".repo = "flake-nimble";
  inputs."shell-v0_3_0".ref = "flake-pinning";
  inputs."shell-v0_3_0".dir = "nimpkgs/s/shell/v0_3_0";
  inputs."shell-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shell-v0_4_0".type = "github";
  inputs."shell-v0_4_0".owner = "riinr";
  inputs."shell-v0_4_0".repo = "flake-nimble";
  inputs."shell-v0_4_0".ref = "flake-pinning";
  inputs."shell-v0_4_0".dir = "nimpkgs/s/shell/v0_4_0";
  inputs."shell-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shell-v0_4_1".type = "github";
  inputs."shell-v0_4_1".owner = "riinr";
  inputs."shell-v0_4_1".repo = "flake-nimble";
  inputs."shell-v0_4_1".ref = "flake-pinning";
  inputs."shell-v0_4_1".dir = "nimpkgs/s/shell/v0_4_1";
  inputs."shell-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shell-v0_4_2".type = "github";
  inputs."shell-v0_4_2".owner = "riinr";
  inputs."shell-v0_4_2".repo = "flake-nimble";
  inputs."shell-v0_4_2".ref = "flake-pinning";
  inputs."shell-v0_4_2".dir = "nimpkgs/s/shell/v0_4_2";
  inputs."shell-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shell-v0_4_3".type = "github";
  inputs."shell-v0_4_3".owner = "riinr";
  inputs."shell-v0_4_3".repo = "flake-nimble";
  inputs."shell-v0_4_3".ref = "flake-pinning";
  inputs."shell-v0_4_3".dir = "nimpkgs/s/shell/v0_4_3";
  inputs."shell-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shell-v0_4_4".type = "github";
  inputs."shell-v0_4_4".owner = "riinr";
  inputs."shell-v0_4_4".repo = "flake-nimble";
  inputs."shell-v0_4_4".ref = "flake-pinning";
  inputs."shell-v0_4_4".dir = "nimpkgs/s/shell/v0_4_4";
  inputs."shell-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}