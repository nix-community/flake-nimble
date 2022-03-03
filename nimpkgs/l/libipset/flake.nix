{
  description = ''libipset wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."libipset-master".type = "github";
  inputs."libipset-master".owner = "riinr";
  inputs."libipset-master".repo = "flake-nimble";
  inputs."libipset-master".ref = "flake-pinning";
  inputs."libipset-master".dir = "nimpkgs/l/libipset/master";
  inputs."libipset-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libipset-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."libipset-0_0_1".type = "github";
  inputs."libipset-0_0_1".owner = "riinr";
  inputs."libipset-0_0_1".repo = "flake-nimble";
  inputs."libipset-0_0_1".ref = "flake-pinning";
  inputs."libipset-0_0_1".dir = "nimpkgs/l/libipset/0_0_1";
  inputs."libipset-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libipset-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."libipset-0_0_2".type = "github";
  inputs."libipset-0_0_2".owner = "riinr";
  inputs."libipset-0_0_2".repo = "flake-nimble";
  inputs."libipset-0_0_2".ref = "flake-pinning";
  inputs."libipset-0_0_2".dir = "nimpkgs/l/libipset/0_0_2";
  inputs."libipset-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libipset-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}