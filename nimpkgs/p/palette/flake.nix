{
  description = ''Color Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."palette-develop".type = "github";
  inputs."palette-develop".owner = "riinr";
  inputs."palette-develop".repo = "flake-nimble";
  inputs."palette-develop".ref = "flake-pinning";
  inputs."palette-develop".dir = "nimpkgs/p/palette/develop";
  inputs."palette-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."palette-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."palette-master".type = "github";
  inputs."palette-master".owner = "riinr";
  inputs."palette-master".repo = "flake-nimble";
  inputs."palette-master".ref = "flake-pinning";
  inputs."palette-master".dir = "nimpkgs/p/palette/master";
  inputs."palette-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."palette-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."palette-0_1_0".type = "github";
  inputs."palette-0_1_0".owner = "riinr";
  inputs."palette-0_1_0".repo = "flake-nimble";
  inputs."palette-0_1_0".ref = "flake-pinning";
  inputs."palette-0_1_0".dir = "nimpkgs/p/palette/0_1_0";
  inputs."palette-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."palette-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."palette-0_2_0".type = "github";
  inputs."palette-0_2_0".owner = "riinr";
  inputs."palette-0_2_0".repo = "flake-nimble";
  inputs."palette-0_2_0".ref = "flake-pinning";
  inputs."palette-0_2_0".dir = "nimpkgs/p/palette/0_2_0";
  inputs."palette-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."palette-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}