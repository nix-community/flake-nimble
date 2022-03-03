{
  description = ''256 colors for shell'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."rainbow-master".type = "github";
  inputs."rainbow-master".owner = "riinr";
  inputs."rainbow-master".repo = "flake-nimble";
  inputs."rainbow-master".ref = "flake-pinning";
  inputs."rainbow-master".dir = "nimpkgs/r/rainbow/master";
  inputs."rainbow-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rainbow-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rainbow-v0_2_0".type = "github";
  inputs."rainbow-v0_2_0".owner = "riinr";
  inputs."rainbow-v0_2_0".repo = "flake-nimble";
  inputs."rainbow-v0_2_0".ref = "flake-pinning";
  inputs."rainbow-v0_2_0".dir = "nimpkgs/r/rainbow/v0_2_0";
  inputs."rainbow-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rainbow-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rainbow-v0_2_1".type = "github";
  inputs."rainbow-v0_2_1".owner = "riinr";
  inputs."rainbow-v0_2_1".repo = "flake-nimble";
  inputs."rainbow-v0_2_1".ref = "flake-pinning";
  inputs."rainbow-v0_2_1".dir = "nimpkgs/r/rainbow/v0_2_1";
  inputs."rainbow-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rainbow-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rainbow-v0_2_2".type = "github";
  inputs."rainbow-v0_2_2".owner = "riinr";
  inputs."rainbow-v0_2_2".repo = "flake-nimble";
  inputs."rainbow-v0_2_2".ref = "flake-pinning";
  inputs."rainbow-v0_2_2".dir = "nimpkgs/r/rainbow/v0_2_2";
  inputs."rainbow-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rainbow-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rainbow-v0_2_3".type = "github";
  inputs."rainbow-v0_2_3".owner = "riinr";
  inputs."rainbow-v0_2_3".repo = "flake-nimble";
  inputs."rainbow-v0_2_3".ref = "flake-pinning";
  inputs."rainbow-v0_2_3".dir = "nimpkgs/r/rainbow/v0_2_3";
  inputs."rainbow-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rainbow-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}