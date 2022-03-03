{
  description = ''Checks if a provided string is actually a correct IP address. Supports detection of Class A to D of IPv4 addresses.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."validateip-master".type = "github";
  inputs."validateip-master".owner = "riinr";
  inputs."validateip-master".repo = "flake-nimble";
  inputs."validateip-master".ref = "flake-pinning";
  inputs."validateip-master".dir = "nimpkgs/v/validateip/master";
  inputs."validateip-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."validateip-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."validateip-0_1_0".type = "github";
  inputs."validateip-0_1_0".owner = "riinr";
  inputs."validateip-0_1_0".repo = "flake-nimble";
  inputs."validateip-0_1_0".ref = "flake-pinning";
  inputs."validateip-0_1_0".dir = "nimpkgs/v/validateip/0_1_0";
  inputs."validateip-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."validateip-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."validateip-0_1_1".type = "github";
  inputs."validateip-0_1_1".owner = "riinr";
  inputs."validateip-0_1_1".repo = "flake-nimble";
  inputs."validateip-0_1_1".ref = "flake-pinning";
  inputs."validateip-0_1_1".dir = "nimpkgs/v/validateip/0_1_1";
  inputs."validateip-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."validateip-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}