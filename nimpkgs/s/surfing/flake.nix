{
  description = ''Surfing is a highly functional CLI for Base64.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."surfing-develop".type = "github";
  inputs."surfing-develop".owner = "riinr";
  inputs."surfing-develop".repo = "flake-nimble";
  inputs."surfing-develop".ref = "flake-pinning";
  inputs."surfing-develop".dir = "nimpkgs/s/surfing/develop";
  inputs."surfing-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."surfing-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."surfing-main".type = "github";
  inputs."surfing-main".owner = "riinr";
  inputs."surfing-main".repo = "flake-nimble";
  inputs."surfing-main".ref = "flake-pinning";
  inputs."surfing-main".dir = "nimpkgs/s/surfing/main";
  inputs."surfing-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."surfing-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."surfing-ver_0_1_0".type = "github";
  inputs."surfing-ver_0_1_0".owner = "riinr";
  inputs."surfing-ver_0_1_0".repo = "flake-nimble";
  inputs."surfing-ver_0_1_0".ref = "flake-pinning";
  inputs."surfing-ver_0_1_0".dir = "nimpkgs/s/surfing/ver_0_1_0";
  inputs."surfing-ver_0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."surfing-ver_0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}