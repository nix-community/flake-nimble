{
  description = ''Graphs in nim!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."grim-master".type = "github";
  inputs."grim-master".owner = "riinr";
  inputs."grim-master".repo = "flake-nimble";
  inputs."grim-master".ref = "flake-pinning";
  inputs."grim-master".dir = "nimpkgs/g/grim/master";
  inputs."grim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."grim-v_0_1_0".type = "github";
  inputs."grim-v_0_1_0".owner = "riinr";
  inputs."grim-v_0_1_0".repo = "flake-nimble";
  inputs."grim-v_0_1_0".ref = "flake-pinning";
  inputs."grim-v_0_1_0".dir = "nimpkgs/g/grim/v_0_1_0";
  inputs."grim-v_0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grim-v_0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."grim-v_0_1_1".type = "github";
  inputs."grim-v_0_1_1".owner = "riinr";
  inputs."grim-v_0_1_1".repo = "flake-nimble";
  inputs."grim-v_0_1_1".ref = "flake-pinning";
  inputs."grim-v_0_1_1".dir = "nimpkgs/g/grim/v_0_1_1";
  inputs."grim-v_0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grim-v_0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."grim-v_0_2_0".type = "github";
  inputs."grim-v_0_2_0".owner = "riinr";
  inputs."grim-v_0_2_0".repo = "flake-nimble";
  inputs."grim-v_0_2_0".ref = "flake-pinning";
  inputs."grim-v_0_2_0".dir = "nimpkgs/g/grim/v_0_2_0";
  inputs."grim-v_0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grim-v_0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."grim-v0_3_0".type = "github";
  inputs."grim-v0_3_0".owner = "riinr";
  inputs."grim-v0_3_0".repo = "flake-nimble";
  inputs."grim-v0_3_0".ref = "flake-pinning";
  inputs."grim-v0_3_0".dir = "nimpkgs/g/grim/v0_3_0";
  inputs."grim-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grim-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."grim-v0_3_1".type = "github";
  inputs."grim-v0_3_1".owner = "riinr";
  inputs."grim-v0_3_1".repo = "flake-nimble";
  inputs."grim-v0_3_1".ref = "flake-pinning";
  inputs."grim-v0_3_1".dir = "nimpkgs/g/grim/v0_3_1";
  inputs."grim-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grim-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}