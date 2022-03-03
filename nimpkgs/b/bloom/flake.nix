{
  description = ''Efficient Bloom filter implementation in Nim using MurmurHash3.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."bloom-master".type = "github";
  inputs."bloom-master".owner = "riinr";
  inputs."bloom-master".repo = "flake-nimble";
  inputs."bloom-master".ref = "flake-pinning";
  inputs."bloom-master".dir = "nimpkgs/b/bloom/master";
  inputs."bloom-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bloom-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bloom-v0_1_0".type = "github";
  inputs."bloom-v0_1_0".owner = "riinr";
  inputs."bloom-v0_1_0".repo = "flake-nimble";
  inputs."bloom-v0_1_0".ref = "flake-pinning";
  inputs."bloom-v0_1_0".dir = "nimpkgs/b/bloom/v0_1_0";
  inputs."bloom-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bloom-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}