{
  description = ''Hashing/Digest collection in pure Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."shimsham-master".type = "github";
  inputs."shimsham-master".owner = "riinr";
  inputs."shimsham-master".repo = "flake-nimble";
  inputs."shimsham-master".ref = "flake-pinning";
  inputs."shimsham-master".dir = "nimpkgs/s/shimsham/master";
  inputs."shimsham-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shimsham-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shimsham-0_0_1".type = "github";
  inputs."shimsham-0_0_1".owner = "riinr";
  inputs."shimsham-0_0_1".repo = "flake-nimble";
  inputs."shimsham-0_0_1".ref = "flake-pinning";
  inputs."shimsham-0_0_1".dir = "nimpkgs/s/shimsham/0_0_1";
  inputs."shimsham-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shimsham-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shimsham-0_3_2".type = "github";
  inputs."shimsham-0_3_2".owner = "riinr";
  inputs."shimsham-0_3_2".repo = "flake-nimble";
  inputs."shimsham-0_3_2".ref = "flake-pinning";
  inputs."shimsham-0_3_2".dir = "nimpkgs/s/shimsham/0_3_2";
  inputs."shimsham-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shimsham-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shimsham-0_3_3".type = "github";
  inputs."shimsham-0_3_3".owner = "riinr";
  inputs."shimsham-0_3_3".repo = "flake-nimble";
  inputs."shimsham-0_3_3".ref = "flake-pinning";
  inputs."shimsham-0_3_3".dir = "nimpkgs/s/shimsham/0_3_3";
  inputs."shimsham-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shimsham-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shimsham-0_3_4".type = "github";
  inputs."shimsham-0_3_4".owner = "riinr";
  inputs."shimsham-0_3_4".repo = "flake-nimble";
  inputs."shimsham-0_3_4".ref = "flake-pinning";
  inputs."shimsham-0_3_4".dir = "nimpkgs/s/shimsham/0_3_4";
  inputs."shimsham-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shimsham-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shimsham-v0_1_0-alpha".type = "github";
  inputs."shimsham-v0_1_0-alpha".owner = "riinr";
  inputs."shimsham-v0_1_0-alpha".repo = "flake-nimble";
  inputs."shimsham-v0_1_0-alpha".ref = "flake-pinning";
  inputs."shimsham-v0_1_0-alpha".dir = "nimpkgs/s/shimsham/v0_1_0-alpha";
  inputs."shimsham-v0_1_0-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shimsham-v0_1_0-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shimsham-v0_2_0-alpha".type = "github";
  inputs."shimsham-v0_2_0-alpha".owner = "riinr";
  inputs."shimsham-v0_2_0-alpha".repo = "flake-nimble";
  inputs."shimsham-v0_2_0-alpha".ref = "flake-pinning";
  inputs."shimsham-v0_2_0-alpha".dir = "nimpkgs/s/shimsham/v0_2_0-alpha";
  inputs."shimsham-v0_2_0-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shimsham-v0_2_0-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shimsham-v0_3_1-alpha".type = "github";
  inputs."shimsham-v0_3_1-alpha".owner = "riinr";
  inputs."shimsham-v0_3_1-alpha".repo = "flake-nimble";
  inputs."shimsham-v0_3_1-alpha".ref = "flake-pinning";
  inputs."shimsham-v0_3_1-alpha".dir = "nimpkgs/s/shimsham/v0_3_1-alpha";
  inputs."shimsham-v0_3_1-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shimsham-v0_3_1-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}