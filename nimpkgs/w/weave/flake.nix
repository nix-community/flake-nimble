{
  description = ''a state-of-the-art multithreading runtime'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."weave-master".type = "github";
  inputs."weave-master".owner = "riinr";
  inputs."weave-master".repo = "flake-nimble";
  inputs."weave-master".ref = "flake-pinning";
  inputs."weave-master".dir = "nimpkgs/w/weave/master";
  inputs."weave-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."weave-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."weave-v0_1_0".type = "github";
  inputs."weave-v0_1_0".owner = "riinr";
  inputs."weave-v0_1_0".repo = "flake-nimble";
  inputs."weave-v0_1_0".ref = "flake-pinning";
  inputs."weave-v0_1_0".dir = "nimpkgs/w/weave/v0_1_0";
  inputs."weave-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."weave-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."weave-v0_2_0".type = "github";
  inputs."weave-v0_2_0".owner = "riinr";
  inputs."weave-v0_2_0".repo = "flake-nimble";
  inputs."weave-v0_2_0".ref = "flake-pinning";
  inputs."weave-v0_2_0".dir = "nimpkgs/w/weave/v0_2_0";
  inputs."weave-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."weave-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."weave-v0_3_0".type = "github";
  inputs."weave-v0_3_0".owner = "riinr";
  inputs."weave-v0_3_0".repo = "flake-nimble";
  inputs."weave-v0_3_0".ref = "flake-pinning";
  inputs."weave-v0_3_0".dir = "nimpkgs/w/weave/v0_3_0";
  inputs."weave-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."weave-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."weave-v0_4_0".type = "github";
  inputs."weave-v0_4_0".owner = "riinr";
  inputs."weave-v0_4_0".repo = "flake-nimble";
  inputs."weave-v0_4_0".ref = "flake-pinning";
  inputs."weave-v0_4_0".dir = "nimpkgs/w/weave/v0_4_0";
  inputs."weave-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."weave-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}