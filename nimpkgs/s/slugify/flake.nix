{
  description = ''Convert strings to a slug. Can be used for URLs, file names, IDs etc.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."slugify-main".type = "github";
  inputs."slugify-main".owner = "riinr";
  inputs."slugify-main".repo = "flake-nimble";
  inputs."slugify-main".ref = "flake-pinning";
  inputs."slugify-main".dir = "nimpkgs/s/slugify/main";
  inputs."slugify-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slugify-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."slugify-v0_1_0".type = "github";
  inputs."slugify-v0_1_0".owner = "riinr";
  inputs."slugify-v0_1_0".repo = "flake-nimble";
  inputs."slugify-v0_1_0".ref = "flake-pinning";
  inputs."slugify-v0_1_0".dir = "nimpkgs/s/slugify/v0_1_0";
  inputs."slugify-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slugify-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."slugify-v0_2_0".type = "github";
  inputs."slugify-v0_2_0".owner = "riinr";
  inputs."slugify-v0_2_0".repo = "flake-nimble";
  inputs."slugify-v0_2_0".ref = "flake-pinning";
  inputs."slugify-v0_2_0".dir = "nimpkgs/s/slugify/v0_2_0";
  inputs."slugify-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slugify-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}