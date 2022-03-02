{
  description = ''macro-based HTML templating engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."emerald-master".type = "github";
  inputs."emerald-master".owner = "riinr";
  inputs."emerald-master".repo = "flake-nimble";
  inputs."emerald-master".ref = "flake-pinning";
  inputs."emerald-master".dir = "nimpkgs/e/emerald/master";
  inputs."emerald-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."emerald-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."emerald-v0_1_0".type = "github";
  inputs."emerald-v0_1_0".owner = "riinr";
  inputs."emerald-v0_1_0".repo = "flake-nimble";
  inputs."emerald-v0_1_0".ref = "flake-pinning";
  inputs."emerald-v0_1_0".dir = "nimpkgs/e/emerald/v0_1_0";
  inputs."emerald-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."emerald-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."emerald-v0_2_0".type = "github";
  inputs."emerald-v0_2_0".owner = "riinr";
  inputs."emerald-v0_2_0".repo = "flake-nimble";
  inputs."emerald-v0_2_0".ref = "flake-pinning";
  inputs."emerald-v0_2_0".dir = "nimpkgs/e/emerald/v0_2_0";
  inputs."emerald-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."emerald-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."emerald-v0_2_1".type = "github";
  inputs."emerald-v0_2_1".owner = "riinr";
  inputs."emerald-v0_2_1".repo = "flake-nimble";
  inputs."emerald-v0_2_1".ref = "flake-pinning";
  inputs."emerald-v0_2_1".dir = "nimpkgs/e/emerald/v0_2_1";
  inputs."emerald-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."emerald-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."emerald-v0_2_2".type = "github";
  inputs."emerald-v0_2_2".owner = "riinr";
  inputs."emerald-v0_2_2".repo = "flake-nimble";
  inputs."emerald-v0_2_2".ref = "flake-pinning";
  inputs."emerald-v0_2_2".dir = "nimpkgs/e/emerald/v0_2_2";
  inputs."emerald-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."emerald-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."emerald-v0_2_3".type = "github";
  inputs."emerald-v0_2_3".owner = "riinr";
  inputs."emerald-v0_2_3".repo = "flake-nimble";
  inputs."emerald-v0_2_3".ref = "flake-pinning";
  inputs."emerald-v0_2_3".dir = "nimpkgs/e/emerald/v0_2_3";
  inputs."emerald-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."emerald-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}