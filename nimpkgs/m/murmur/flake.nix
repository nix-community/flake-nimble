{
  description = ''MurmurHash in pure Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."murmur-master".type = "github";
  inputs."murmur-master".owner = "riinr";
  inputs."murmur-master".repo = "flake-nimble";
  inputs."murmur-master".ref = "flake-pinning";
  inputs."murmur-master".dir = "nimpkgs/m/murmur/master";
  inputs."murmur-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."murmur-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."murmur-v0_1_0".type = "github";
  inputs."murmur-v0_1_0".owner = "riinr";
  inputs."murmur-v0_1_0".repo = "flake-nimble";
  inputs."murmur-v0_1_0".ref = "flake-pinning";
  inputs."murmur-v0_1_0".dir = "nimpkgs/m/murmur/v0_1_0";
  inputs."murmur-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."murmur-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}