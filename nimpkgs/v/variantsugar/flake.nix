{
  description = ''utility macros mostly for object variants'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."variantsugar-master".type = "github";
  inputs."variantsugar-master".owner = "riinr";
  inputs."variantsugar-master".repo = "flake-nimble";
  inputs."variantsugar-master".ref = "flake-pinning";
  inputs."variantsugar-master".dir = "nimpkgs/v/variantsugar/master";
  inputs."variantsugar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variantsugar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."variantsugar-v0_1_0".type = "github";
  inputs."variantsugar-v0_1_0".owner = "riinr";
  inputs."variantsugar-v0_1_0".repo = "flake-nimble";
  inputs."variantsugar-v0_1_0".ref = "flake-pinning";
  inputs."variantsugar-v0_1_0".dir = "nimpkgs/v/variantsugar/v0_1_0";
  inputs."variantsugar-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variantsugar-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}