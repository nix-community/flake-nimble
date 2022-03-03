{
  description = ''Ratio calculator on your terminal'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."miter-master".type = "github";
  inputs."miter-master".owner = "riinr";
  inputs."miter-master".repo = "flake-nimble";
  inputs."miter-master".ref = "flake-pinning";
  inputs."miter-master".dir = "nimpkgs/m/miter/master";
  inputs."miter-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."miter-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."miter-0_1_0".type = "github";
  inputs."miter-0_1_0".owner = "riinr";
  inputs."miter-0_1_0".repo = "flake-nimble";
  inputs."miter-0_1_0".ref = "flake-pinning";
  inputs."miter-0_1_0".dir = "nimpkgs/m/miter/0_1_0";
  inputs."miter-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."miter-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."miter-0_2_0".type = "github";
  inputs."miter-0_2_0".owner = "riinr";
  inputs."miter-0_2_0".repo = "flake-nimble";
  inputs."miter-0_2_0".ref = "flake-pinning";
  inputs."miter-0_2_0".dir = "nimpkgs/m/miter/0_2_0";
  inputs."miter-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."miter-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}