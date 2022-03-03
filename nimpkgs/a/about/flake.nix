{
  description = ''Executable for finding information about programs in PATH'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."about-master".type = "github";
  inputs."about-master".owner = "riinr";
  inputs."about-master".repo = "flake-nimble";
  inputs."about-master".ref = "flake-pinning";
  inputs."about-master".dir = "nimpkgs/a/about/master";
  inputs."about-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."about-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."about-v0_1_0".type = "github";
  inputs."about-v0_1_0".owner = "riinr";
  inputs."about-v0_1_0".repo = "flake-nimble";
  inputs."about-v0_1_0".ref = "flake-pinning";
  inputs."about-v0_1_0".dir = "nimpkgs/a/about/v0_1_0";
  inputs."about-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."about-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."about-v0_1_1".type = "github";
  inputs."about-v0_1_1".owner = "riinr";
  inputs."about-v0_1_1".repo = "flake-nimble";
  inputs."about-v0_1_1".ref = "flake-pinning";
  inputs."about-v0_1_1".dir = "nimpkgs/a/about/v0_1_1";
  inputs."about-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."about-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}