{
  description = ''Single Page Documentation Generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."hotdoc-main".type = "github";
  inputs."hotdoc-main".owner = "riinr";
  inputs."hotdoc-main".repo = "flake-nimble";
  inputs."hotdoc-main".ref = "flake-pinning";
  inputs."hotdoc-main".dir = "nimpkgs/h/hotdoc/main";
  inputs."hotdoc-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hotdoc-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hotdoc-0_1_0".type = "github";
  inputs."hotdoc-0_1_0".owner = "riinr";
  inputs."hotdoc-0_1_0".repo = "flake-nimble";
  inputs."hotdoc-0_1_0".ref = "flake-pinning";
  inputs."hotdoc-0_1_0".dir = "nimpkgs/h/hotdoc/0_1_0";
  inputs."hotdoc-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hotdoc-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}