{
  description = ''Various networking utils'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."networkutils-master".type = "github";
  inputs."networkutils-master".owner = "riinr";
  inputs."networkutils-master".repo = "flake-nimble";
  inputs."networkutils-master".ref = "flake-pinning";
  inputs."networkutils-master".dir = "nimpkgs/n/networkutils/master";
  inputs."networkutils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."networkutils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."networkutils-v0_1".type = "github";
  inputs."networkutils-v0_1".owner = "riinr";
  inputs."networkutils-v0_1".repo = "flake-nimble";
  inputs."networkutils-v0_1".ref = "flake-pinning";
  inputs."networkutils-v0_1".dir = "nimpkgs/n/networkutils/v0_1";
  inputs."networkutils-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."networkutils-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."networkutils-v0_2".type = "github";
  inputs."networkutils-v0_2".owner = "riinr";
  inputs."networkutils-v0_2".repo = "flake-nimble";
  inputs."networkutils-v0_2".ref = "flake-pinning";
  inputs."networkutils-v0_2".dir = "nimpkgs/n/networkutils/v0_2";
  inputs."networkutils-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."networkutils-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."networkutils-v0_3".type = "github";
  inputs."networkutils-v0_3".owner = "riinr";
  inputs."networkutils-v0_3".repo = "flake-nimble";
  inputs."networkutils-v0_3".ref = "flake-pinning";
  inputs."networkutils-v0_3".dir = "nimpkgs/n/networkutils/v0_3";
  inputs."networkutils-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."networkutils-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}