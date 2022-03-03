{
  description = ''fastText wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimfasttext-master".type = "github";
  inputs."nimfasttext-master".owner = "riinr";
  inputs."nimfasttext-master".repo = "flake-nimble";
  inputs."nimfasttext-master".ref = "flake-pinning";
  inputs."nimfasttext-master".dir = "nimpkgs/n/nimfasttext/master";
  inputs."nimfasttext-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfasttext-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimfasttext-v0_1_0".type = "github";
  inputs."nimfasttext-v0_1_0".owner = "riinr";
  inputs."nimfasttext-v0_1_0".repo = "flake-nimble";
  inputs."nimfasttext-v0_1_0".ref = "flake-pinning";
  inputs."nimfasttext-v0_1_0".dir = "nimpkgs/n/nimfasttext/v0_1_0";
  inputs."nimfasttext-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfasttext-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimfasttext-v0_1_2".type = "github";
  inputs."nimfasttext-v0_1_2".owner = "riinr";
  inputs."nimfasttext-v0_1_2".repo = "flake-nimble";
  inputs."nimfasttext-v0_1_2".ref = "flake-pinning";
  inputs."nimfasttext-v0_1_2".dir = "nimpkgs/n/nimfasttext/v0_1_2";
  inputs."nimfasttext-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfasttext-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}