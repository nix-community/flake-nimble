{
  description = ''official redis client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."redis-master".type = "github";
  inputs."redis-master".owner = "riinr";
  inputs."redis-master".repo = "flake-nimble";
  inputs."redis-master".ref = "flake-pinning";
  inputs."redis-master".dir = "nimpkgs/r/redis/master";
  inputs."redis-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redis-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."redis-v0_3_0".type = "github";
  inputs."redis-v0_3_0".owner = "riinr";
  inputs."redis-v0_3_0".repo = "flake-nimble";
  inputs."redis-v0_3_0".ref = "flake-pinning";
  inputs."redis-v0_3_0".dir = "nimpkgs/r/redis/v0_3_0";
  inputs."redis-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redis-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}