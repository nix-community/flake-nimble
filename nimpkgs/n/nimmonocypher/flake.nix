{
  description = ''monocypher wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimmonocypher-master".type = "github";
  inputs."nimmonocypher-master".owner = "riinr";
  inputs."nimmonocypher-master".repo = "flake-nimble";
  inputs."nimmonocypher-master".ref = "flake-pinning";
  inputs."nimmonocypher-master".dir = "nimpkgs/n/nimmonocypher/master";
  inputs."nimmonocypher-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimmonocypher-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimmonocypher-v0_1_1".type = "github";
  inputs."nimmonocypher-v0_1_1".owner = "riinr";
  inputs."nimmonocypher-v0_1_1".repo = "flake-nimble";
  inputs."nimmonocypher-v0_1_1".ref = "flake-pinning";
  inputs."nimmonocypher-v0_1_1".dir = "nimpkgs/n/nimmonocypher/v0_1_1";
  inputs."nimmonocypher-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimmonocypher-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimmonocypher-v0_1_2".type = "github";
  inputs."nimmonocypher-v0_1_2".owner = "riinr";
  inputs."nimmonocypher-v0_1_2".repo = "flake-nimble";
  inputs."nimmonocypher-v0_1_2".ref = "flake-pinning";
  inputs."nimmonocypher-v0_1_2".dir = "nimpkgs/n/nimmonocypher/v0_1_2";
  inputs."nimmonocypher-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimmonocypher-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}