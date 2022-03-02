{
  description = ''API for www.eloverblik.dk'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."eloverblik-master".type = "github";
  inputs."eloverblik-master".owner = "riinr";
  inputs."eloverblik-master".repo = "flake-nimble";
  inputs."eloverblik-master".ref = "flake-pinning";
  inputs."eloverblik-master".dir = "nimpkgs/e/eloverblik/master";
  inputs."eloverblik-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eloverblik-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eloverblik-v0_0_1".type = "github";
  inputs."eloverblik-v0_0_1".owner = "riinr";
  inputs."eloverblik-v0_0_1".repo = "flake-nimble";
  inputs."eloverblik-v0_0_1".ref = "flake-pinning";
  inputs."eloverblik-v0_0_1".dir = "nimpkgs/e/eloverblik/v0_0_1";
  inputs."eloverblik-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eloverblik-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eloverblik-v0_0_2".type = "github";
  inputs."eloverblik-v0_0_2".owner = "riinr";
  inputs."eloverblik-v0_0_2".repo = "flake-nimble";
  inputs."eloverblik-v0_0_2".ref = "flake-pinning";
  inputs."eloverblik-v0_0_2".dir = "nimpkgs/e/eloverblik/v0_0_2";
  inputs."eloverblik-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eloverblik-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eloverblik-v0_0_4".type = "github";
  inputs."eloverblik-v0_0_4".owner = "riinr";
  inputs."eloverblik-v0_0_4".repo = "flake-nimble";
  inputs."eloverblik-v0_0_4".ref = "flake-pinning";
  inputs."eloverblik-v0_0_4".dir = "nimpkgs/e/eloverblik/v0_0_4";
  inputs."eloverblik-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eloverblik-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eloverblik-v0_0_5".type = "github";
  inputs."eloverblik-v0_0_5".owner = "riinr";
  inputs."eloverblik-v0_0_5".repo = "flake-nimble";
  inputs."eloverblik-v0_0_5".ref = "flake-pinning";
  inputs."eloverblik-v0_0_5".dir = "nimpkgs/e/eloverblik/v0_0_5";
  inputs."eloverblik-v0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eloverblik-v0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eloverblik-v0_0_6".type = "github";
  inputs."eloverblik-v0_0_6".owner = "riinr";
  inputs."eloverblik-v0_0_6".repo = "flake-nimble";
  inputs."eloverblik-v0_0_6".ref = "flake-pinning";
  inputs."eloverblik-v0_0_6".dir = "nimpkgs/e/eloverblik/v0_0_6";
  inputs."eloverblik-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eloverblik-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eloverblik-v0_0_7".type = "github";
  inputs."eloverblik-v0_0_7".owner = "riinr";
  inputs."eloverblik-v0_0_7".repo = "flake-nimble";
  inputs."eloverblik-v0_0_7".ref = "flake-pinning";
  inputs."eloverblik-v0_0_7".dir = "nimpkgs/e/eloverblik/v0_0_7";
  inputs."eloverblik-v0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eloverblik-v0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}