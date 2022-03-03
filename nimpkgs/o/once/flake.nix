{
  description = ''Once provides a type that will enforce that a callback is invoked only once.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."once-master".type = "github";
  inputs."once-master".owner = "riinr";
  inputs."once-master".repo = "flake-nimble";
  inputs."once-master".ref = "flake-pinning";
  inputs."once-master".dir = "nimpkgs/o/once/master";
  inputs."once-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."once-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."once-1_0_0".type = "github";
  inputs."once-1_0_0".owner = "riinr";
  inputs."once-1_0_0".repo = "flake-nimble";
  inputs."once-1_0_0".ref = "flake-pinning";
  inputs."once-1_0_0".dir = "nimpkgs/o/once/1_0_0";
  inputs."once-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."once-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}