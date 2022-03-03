{
  description = ''Arbitrary-precision integers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."bigints-master".type = "github";
  inputs."bigints-master".owner = "riinr";
  inputs."bigints-master".repo = "flake-nimble";
  inputs."bigints-master".ref = "flake-pinning";
  inputs."bigints-master".dir = "nimpkgs/b/bigints/master";
  inputs."bigints-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bigints-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bigints-0_4_4".type = "github";
  inputs."bigints-0_4_4".owner = "riinr";
  inputs."bigints-0_4_4".repo = "flake-nimble";
  inputs."bigints-0_4_4".ref = "flake-pinning";
  inputs."bigints-0_4_4".dir = "nimpkgs/b/bigints/0_4_4";
  inputs."bigints-0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bigints-0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bigints-0_5_0".type = "github";
  inputs."bigints-0_5_0".owner = "riinr";
  inputs."bigints-0_5_0".repo = "flake-nimble";
  inputs."bigints-0_5_0".ref = "flake-pinning";
  inputs."bigints-0_5_0".dir = "nimpkgs/b/bigints/0_5_0";
  inputs."bigints-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bigints-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}