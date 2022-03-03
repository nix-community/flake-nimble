{
  description = ''Sequoia PGP wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sequoia-master".type = "github";
  inputs."sequoia-master".owner = "riinr";
  inputs."sequoia-master".repo = "flake-nimble";
  inputs."sequoia-master".ref = "flake-pinning";
  inputs."sequoia-master".dir = "nimpkgs/s/sequoia/master";
  inputs."sequoia-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sequoia-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sequoia-0_1_0".type = "github";
  inputs."sequoia-0_1_0".owner = "riinr";
  inputs."sequoia-0_1_0".repo = "flake-nimble";
  inputs."sequoia-0_1_0".ref = "flake-pinning";
  inputs."sequoia-0_1_0".dir = "nimpkgs/s/sequoia/0_1_0";
  inputs."sequoia-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sequoia-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sequoia-0_1_1".type = "github";
  inputs."sequoia-0_1_1".owner = "riinr";
  inputs."sequoia-0_1_1".repo = "flake-nimble";
  inputs."sequoia-0_1_1".ref = "flake-pinning";
  inputs."sequoia-0_1_1".dir = "nimpkgs/s/sequoia/0_1_1";
  inputs."sequoia-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sequoia-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}