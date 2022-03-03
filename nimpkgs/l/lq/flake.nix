{
  description = ''Directory listing tool'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."lq-master".type = "github";
  inputs."lq-master".owner = "riinr";
  inputs."lq-master".repo = "flake-nimble";
  inputs."lq-master".ref = "flake-pinning";
  inputs."lq-master".dir = "nimpkgs/l/lq/master";
  inputs."lq-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lq-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."lq-1_0_0".type = "github";
  inputs."lq-1_0_0".owner = "riinr";
  inputs."lq-1_0_0".repo = "flake-nimble";
  inputs."lq-1_0_0".ref = "flake-pinning";
  inputs."lq-1_0_0".dir = "nimpkgs/l/lq/1_0_0";
  inputs."lq-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lq-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."lq-1_0_1".type = "github";
  inputs."lq-1_0_1".owner = "riinr";
  inputs."lq-1_0_1".repo = "flake-nimble";
  inputs."lq-1_0_1".ref = "flake-pinning";
  inputs."lq-1_0_1".dir = "nimpkgs/l/lq/1_0_1";
  inputs."lq-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lq-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."lq-2_0_0".type = "github";
  inputs."lq-2_0_0".owner = "riinr";
  inputs."lq-2_0_0".repo = "flake-nimble";
  inputs."lq-2_0_0".ref = "flake-pinning";
  inputs."lq-2_0_0".dir = "nimpkgs/l/lq/2_0_0";
  inputs."lq-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lq-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."lq-2_2_0".type = "github";
  inputs."lq-2_2_0".owner = "riinr";
  inputs."lq-2_2_0".repo = "flake-nimble";
  inputs."lq-2_2_0".ref = "flake-pinning";
  inputs."lq-2_2_0".dir = "nimpkgs/l/lq/2_2_0";
  inputs."lq-2_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lq-2_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."lq-2_2_1".type = "github";
  inputs."lq-2_2_1".owner = "riinr";
  inputs."lq-2_2_1".repo = "flake-nimble";
  inputs."lq-2_2_1".ref = "flake-pinning";
  inputs."lq-2_2_1".dir = "nimpkgs/l/lq/2_2_1";
  inputs."lq-2_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lq-2_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}