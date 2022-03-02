{
  description = ''Boilerplate generator for Jester web framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."gen-master".type = "github";
  inputs."gen-master".owner = "riinr";
  inputs."gen-master".repo = "flake-nimble";
  inputs."gen-master".ref = "flake-pinning";
  inputs."gen-master".dir = "nimpkgs/g/gen/master";
  inputs."gen-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gen-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gen-0_2_0".type = "github";
  inputs."gen-0_2_0".owner = "riinr";
  inputs."gen-0_2_0".repo = "flake-nimble";
  inputs."gen-0_2_0".ref = "flake-pinning";
  inputs."gen-0_2_0".dir = "nimpkgs/g/gen/0_2_0";
  inputs."gen-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gen-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gen-0_4_0".type = "github";
  inputs."gen-0_4_0".owner = "riinr";
  inputs."gen-0_4_0".repo = "flake-nimble";
  inputs."gen-0_4_0".ref = "flake-pinning";
  inputs."gen-0_4_0".dir = "nimpkgs/g/gen/0_4_0";
  inputs."gen-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gen-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gen-0_6_0".type = "github";
  inputs."gen-0_6_0".owner = "riinr";
  inputs."gen-0_6_0".repo = "flake-nimble";
  inputs."gen-0_6_0".ref = "flake-pinning";
  inputs."gen-0_6_0".dir = "nimpkgs/g/gen/0_6_0";
  inputs."gen-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gen-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gen-0_8_0".type = "github";
  inputs."gen-0_8_0".owner = "riinr";
  inputs."gen-0_8_0".repo = "flake-nimble";
  inputs."gen-0_8_0".ref = "flake-pinning";
  inputs."gen-0_8_0".dir = "nimpkgs/g/gen/0_8_0";
  inputs."gen-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gen-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gen-1_0_0".type = "github";
  inputs."gen-1_0_0".owner = "riinr";
  inputs."gen-1_0_0".repo = "flake-nimble";
  inputs."gen-1_0_0".ref = "flake-pinning";
  inputs."gen-1_0_0".dir = "nimpkgs/g/gen/1_0_0";
  inputs."gen-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gen-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gen-1_2_0".type = "github";
  inputs."gen-1_2_0".owner = "riinr";
  inputs."gen-1_2_0".repo = "flake-nimble";
  inputs."gen-1_2_0".ref = "flake-pinning";
  inputs."gen-1_2_0".dir = "nimpkgs/g/gen/1_2_0";
  inputs."gen-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gen-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gen-1_4_0".type = "github";
  inputs."gen-1_4_0".owner = "riinr";
  inputs."gen-1_4_0".repo = "flake-nimble";
  inputs."gen-1_4_0".ref = "flake-pinning";
  inputs."gen-1_4_0".dir = "nimpkgs/g/gen/1_4_0";
  inputs."gen-1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gen-1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}