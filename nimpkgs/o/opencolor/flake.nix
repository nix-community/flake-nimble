{
  description = ''Nim bindings for Open color'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
    inputs."opencolor-v1_9_1".type = "github";
  inputs."opencolor-v1_9_1".owner = "riinr";
  inputs."opencolor-v1_9_1".repo = "flake-nimble";
  inputs."opencolor-v1_9_1".ref = "flake-pinning";
  inputs."opencolor-v1_9_1".dir = "nimpkgs/o/opencolor/v1_9_1";
  inputs."opencolor-v1_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opencolor-v1_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."opencolor-v1_9_1_1".type = "github";
  inputs."opencolor-v1_9_1_1".owner = "riinr";
  inputs."opencolor-v1_9_1_1".repo = "flake-nimble";
  inputs."opencolor-v1_9_1_1".ref = "flake-pinning";
  inputs."opencolor-v1_9_1_1".dir = "nimpkgs/o/opencolor/v1_9_1_1";
  inputs."opencolor-v1_9_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opencolor-v1_9_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}