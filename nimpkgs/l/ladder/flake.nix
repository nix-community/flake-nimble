{
  description = ''Ladder logic macros for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ladder-master".type = "github";
  inputs."ladder-master".owner = "riinr";
  inputs."ladder-master".repo = "flake-nimble";
  inputs."ladder-master".ref = "flake-pinning";
  inputs."ladder-master".dir = "nimpkgs/l/ladder/master";
  inputs."ladder-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ladder-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ladder-0_4_0".type = "github";
  inputs."ladder-0_4_0".owner = "riinr";
  inputs."ladder-0_4_0".repo = "flake-nimble";
  inputs."ladder-0_4_0".ref = "flake-pinning";
  inputs."ladder-0_4_0".dir = "nimpkgs/l/ladder/0_4_0";
  inputs."ladder-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ladder-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}