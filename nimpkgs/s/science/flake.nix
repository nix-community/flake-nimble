{
  description = ''A library for scientific computations in pure Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."science-master".type = "github";
  inputs."science-master".owner = "riinr";
  inputs."science-master".repo = "flake-nimble";
  inputs."science-master".ref = "flake-pinning";
  inputs."science-master".dir = "nimpkgs/s/science/master";
  inputs."science-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."science-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."science-v0_2_2".type = "github";
  inputs."science-v0_2_2".owner = "riinr";
  inputs."science-v0_2_2".repo = "flake-nimble";
  inputs."science-v0_2_2".ref = "flake-pinning";
  inputs."science-v0_2_2".dir = "nimpkgs/s/science/v0_2_2";
  inputs."science-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."science-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}