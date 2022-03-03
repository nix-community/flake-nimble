{
  description = ''Bit Shuffling Block Compressor (C-Blosc)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."blosc-master".type = "github";
  inputs."blosc-master".owner = "riinr";
  inputs."blosc-master".repo = "flake-nimble";
  inputs."blosc-master".ref = "flake-pinning";
  inputs."blosc-master".dir = "nimpkgs/b/blosc/master";
  inputs."blosc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."blosc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."blosc-v1_15_0".type = "github";
  inputs."blosc-v1_15_0".owner = "riinr";
  inputs."blosc-v1_15_0".repo = "flake-nimble";
  inputs."blosc-v1_15_0".ref = "flake-pinning";
  inputs."blosc-v1_15_0".dir = "nimpkgs/b/blosc/v1_15_0";
  inputs."blosc-v1_15_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."blosc-v1_15_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}