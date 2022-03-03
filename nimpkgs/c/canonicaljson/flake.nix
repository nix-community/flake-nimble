{
  description = ''Canonical JSON according to RFC8785'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."canonicaljson-master".type = "github";
  inputs."canonicaljson-master".owner = "riinr";
  inputs."canonicaljson-master".repo = "flake-nimble";
  inputs."canonicaljson-master".ref = "flake-pinning";
  inputs."canonicaljson-master".dir = "nimpkgs/c/canonicaljson/master";
  inputs."canonicaljson-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."canonicaljson-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."canonicaljson-1_0_0".type = "github";
  inputs."canonicaljson-1_0_0".owner = "riinr";
  inputs."canonicaljson-1_0_0".repo = "flake-nimble";
  inputs."canonicaljson-1_0_0".ref = "flake-pinning";
  inputs."canonicaljson-1_0_0".dir = "nimpkgs/c/canonicaljson/1_0_0";
  inputs."canonicaljson-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."canonicaljson-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."canonicaljson-1_0_1".type = "github";
  inputs."canonicaljson-1_0_1".owner = "riinr";
  inputs."canonicaljson-1_0_1".repo = "flake-nimble";
  inputs."canonicaljson-1_0_1".ref = "flake-pinning";
  inputs."canonicaljson-1_0_1".dir = "nimpkgs/c/canonicaljson/1_0_1";
  inputs."canonicaljson-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."canonicaljson-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."canonicaljson-1_0_2".type = "github";
  inputs."canonicaljson-1_0_2".owner = "riinr";
  inputs."canonicaljson-1_0_2".repo = "flake-nimble";
  inputs."canonicaljson-1_0_2".ref = "flake-pinning";
  inputs."canonicaljson-1_0_2".dir = "nimpkgs/c/canonicaljson/1_0_2";
  inputs."canonicaljson-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."canonicaljson-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."canonicaljson-1_1_0".type = "github";
  inputs."canonicaljson-1_1_0".owner = "riinr";
  inputs."canonicaljson-1_1_0".repo = "flake-nimble";
  inputs."canonicaljson-1_1_0".ref = "flake-pinning";
  inputs."canonicaljson-1_1_0".dir = "nimpkgs/c/canonicaljson/1_1_0";
  inputs."canonicaljson-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."canonicaljson-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."canonicaljson-1_1_1".type = "github";
  inputs."canonicaljson-1_1_1".owner = "riinr";
  inputs."canonicaljson-1_1_1".repo = "flake-nimble";
  inputs."canonicaljson-1_1_1".ref = "flake-pinning";
  inputs."canonicaljson-1_1_1".dir = "nimpkgs/c/canonicaljson/1_1_1";
  inputs."canonicaljson-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."canonicaljson-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."canonicaljson-1_1_2".type = "github";
  inputs."canonicaljson-1_1_2".owner = "riinr";
  inputs."canonicaljson-1_1_2".repo = "flake-nimble";
  inputs."canonicaljson-1_1_2".ref = "flake-pinning";
  inputs."canonicaljson-1_1_2".dir = "nimpkgs/c/canonicaljson/1_1_2";
  inputs."canonicaljson-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."canonicaljson-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}