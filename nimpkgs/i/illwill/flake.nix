{
  description = ''A curses inspired simple cross-platform console library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."illwill-master".type = "github";
  inputs."illwill-master".owner = "riinr";
  inputs."illwill-master".repo = "flake-nimble";
  inputs."illwill-master".ref = "flake-pinning";
  inputs."illwill-master".dir = "nimpkgs/i/illwill/master";
  inputs."illwill-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwill-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."illwill-0_1_0".type = "github";
  inputs."illwill-0_1_0".owner = "riinr";
  inputs."illwill-0_1_0".repo = "flake-nimble";
  inputs."illwill-0_1_0".ref = "flake-pinning";
  inputs."illwill-0_1_0".dir = "nimpkgs/i/illwill/0_1_0";
  inputs."illwill-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwill-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."illwill-v0_1_0".type = "github";
  inputs."illwill-v0_1_0".owner = "riinr";
  inputs."illwill-v0_1_0".repo = "flake-nimble";
  inputs."illwill-v0_1_0".ref = "flake-pinning";
  inputs."illwill-v0_1_0".dir = "nimpkgs/i/illwill/v0_1_0";
  inputs."illwill-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwill-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."illwill-v0_2_0".type = "github";
  inputs."illwill-v0_2_0".owner = "riinr";
  inputs."illwill-v0_2_0".repo = "flake-nimble";
  inputs."illwill-v0_2_0".ref = "flake-pinning";
  inputs."illwill-v0_2_0".dir = "nimpkgs/i/illwill/v0_2_0";
  inputs."illwill-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwill-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}