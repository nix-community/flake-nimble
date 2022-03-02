{
  description = ''Redis client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."redisclient-master".type = "github";
  inputs."redisclient-master".owner = "riinr";
  inputs."redisclient-master".repo = "flake-nimble";
  inputs."redisclient-master".ref = "flake-pinning";
  inputs."redisclient-master".dir = "nimpkgs/r/redisclient/master";
  inputs."redisclient-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redisclient-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."redisclient-0_1_1".type = "github";
  inputs."redisclient-0_1_1".owner = "riinr";
  inputs."redisclient-0_1_1".repo = "flake-nimble";
  inputs."redisclient-0_1_1".ref = "flake-pinning";
  inputs."redisclient-0_1_1".dir = "nimpkgs/r/redisclient/0_1_1";
  inputs."redisclient-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redisclient-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}