{
  description = ''An implementation of DNS server stamps in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."dnsstamps-master".type = "github";
  inputs."dnsstamps-master".owner = "riinr";
  inputs."dnsstamps-master".repo = "flake-nimble";
  inputs."dnsstamps-master".ref = "flake-pinning";
  inputs."dnsstamps-master".dir = "nimpkgs/d/dnsstamps/master";
  inputs."dnsstamps-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsstamps-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dnsstamps-0_1_0".type = "github";
  inputs."dnsstamps-0_1_0".owner = "riinr";
  inputs."dnsstamps-0_1_0".repo = "flake-nimble";
  inputs."dnsstamps-0_1_0".ref = "flake-pinning";
  inputs."dnsstamps-0_1_0".dir = "nimpkgs/d/dnsstamps/0_1_0";
  inputs."dnsstamps-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsstamps-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}