{
  description = ''xxhash wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."xxhash-master".type = "github";
  inputs."xxhash-master".owner = "riinr";
  inputs."xxhash-master".repo = "flake-nimble";
  inputs."xxhash-master".ref = "flake-pinning";
  inputs."xxhash-master".dir = "nimpkgs/x/xxhash/master";
  inputs."xxhash-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xxhash-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xxhash-0_7_0".type = "github";
  inputs."xxhash-0_7_0".owner = "riinr";
  inputs."xxhash-0_7_0".repo = "flake-nimble";
  inputs."xxhash-0_7_0".ref = "flake-pinning";
  inputs."xxhash-0_7_0".dir = "nimpkgs/x/xxhash/0_7_0";
  inputs."xxhash-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xxhash-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xxhash-0_7_1".type = "github";
  inputs."xxhash-0_7_1".owner = "riinr";
  inputs."xxhash-0_7_1".repo = "flake-nimble";
  inputs."xxhash-0_7_1".ref = "flake-pinning";
  inputs."xxhash-0_7_1".dir = "nimpkgs/x/xxhash/0_7_1";
  inputs."xxhash-0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xxhash-0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xxhash-0_8_0".type = "github";
  inputs."xxhash-0_8_0".owner = "riinr";
  inputs."xxhash-0_8_0".repo = "flake-nimble";
  inputs."xxhash-0_8_0".ref = "flake-pinning";
  inputs."xxhash-0_8_0".dir = "nimpkgs/x/xxhash/0_8_0";
  inputs."xxhash-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xxhash-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xxhash-0_9_0".type = "github";
  inputs."xxhash-0_9_0".owner = "riinr";
  inputs."xxhash-0_9_0".repo = "flake-nimble";
  inputs."xxhash-0_9_0".ref = "flake-pinning";
  inputs."xxhash-0_9_0".dir = "nimpkgs/x/xxhash/0_9_0";
  inputs."xxhash-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xxhash-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}