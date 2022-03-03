{
  description = ''Unicode text segmentation tr29'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."segmentation-master".type = "github";
  inputs."segmentation-master".owner = "riinr";
  inputs."segmentation-master".repo = "flake-nimble";
  inputs."segmentation-master".ref = "flake-pinning";
  inputs."segmentation-master".dir = "nimpkgs/s/segmentation/master";
  inputs."segmentation-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."segmentation-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."segmentation-v0_0_1".type = "github";
  inputs."segmentation-v0_0_1".owner = "riinr";
  inputs."segmentation-v0_0_1".repo = "flake-nimble";
  inputs."segmentation-v0_0_1".ref = "flake-pinning";
  inputs."segmentation-v0_0_1".dir = "nimpkgs/s/segmentation/v0_0_1";
  inputs."segmentation-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."segmentation-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."segmentation-v0_1_0".type = "github";
  inputs."segmentation-v0_1_0".owner = "riinr";
  inputs."segmentation-v0_1_0".repo = "flake-nimble";
  inputs."segmentation-v0_1_0".ref = "flake-pinning";
  inputs."segmentation-v0_1_0".dir = "nimpkgs/s/segmentation/v0_1_0";
  inputs."segmentation-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."segmentation-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}