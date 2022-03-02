{
  description = ''rodster'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."rodster-main".type = "github";
  inputs."rodster-main".owner = "riinr";
  inputs."rodster-main".repo = "flake-nimble";
  inputs."rodster-main".ref = "flake-pinning";
  inputs."rodster-main".dir = "nimpkgs/r/rodster/main";
  inputs."rodster-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodster-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rodster-0_1_0".type = "github";
  inputs."rodster-0_1_0".owner = "riinr";
  inputs."rodster-0_1_0".repo = "flake-nimble";
  inputs."rodster-0_1_0".ref = "flake-pinning";
  inputs."rodster-0_1_0".dir = "nimpkgs/r/rodster/0_1_0";
  inputs."rodster-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodster-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rodster-0_2_0".type = "github";
  inputs."rodster-0_2_0".owner = "riinr";
  inputs."rodster-0_2_0".repo = "flake-nimble";
  inputs."rodster-0_2_0".ref = "flake-pinning";
  inputs."rodster-0_2_0".dir = "nimpkgs/r/rodster/0_2_0";
  inputs."rodster-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodster-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rodster-0_3_0".type = "github";
  inputs."rodster-0_3_0".owner = "riinr";
  inputs."rodster-0_3_0".repo = "flake-nimble";
  inputs."rodster-0_3_0".ref = "flake-pinning";
  inputs."rodster-0_3_0".dir = "nimpkgs/r/rodster/0_3_0";
  inputs."rodster-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodster-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rodster-1_0_0".type = "github";
  inputs."rodster-1_0_0".owner = "riinr";
  inputs."rodster-1_0_0".repo = "flake-nimble";
  inputs."rodster-1_0_0".ref = "flake-pinning";
  inputs."rodster-1_0_0".dir = "nimpkgs/r/rodster/1_0_0";
  inputs."rodster-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodster-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rodster-1_1_0".type = "github";
  inputs."rodster-1_1_0".owner = "riinr";
  inputs."rodster-1_1_0".repo = "flake-nimble";
  inputs."rodster-1_1_0".ref = "flake-pinning";
  inputs."rodster-1_1_0".dir = "nimpkgs/r/rodster/1_1_0";
  inputs."rodster-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodster-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rodster-1_2_0".type = "github";
  inputs."rodster-1_2_0".owner = "riinr";
  inputs."rodster-1_2_0".repo = "flake-nimble";
  inputs."rodster-1_2_0".ref = "flake-pinning";
  inputs."rodster-1_2_0".dir = "nimpkgs/r/rodster/1_2_0";
  inputs."rodster-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodster-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}