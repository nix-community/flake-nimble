{
  description = ''Special mathematical functions in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."special_functions-master".type = "github";
  inputs."special_functions-master".owner = "riinr";
  inputs."special_functions-master".repo = "flake-nimble";
  inputs."special_functions-master".ref = "flake-pinning";
  inputs."special_functions-master".dir = "nimpkgs/s/special_functions/master";
  inputs."special_functions-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."special_functions-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."special_functions-v0_1_0".type = "github";
  inputs."special_functions-v0_1_0".owner = "riinr";
  inputs."special_functions-v0_1_0".repo = "flake-nimble";
  inputs."special_functions-v0_1_0".ref = "flake-pinning";
  inputs."special_functions-v0_1_0".dir = "nimpkgs/s/special_functions/v0_1_0";
  inputs."special_functions-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."special_functions-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."special_functions-v0_1_1".type = "github";
  inputs."special_functions-v0_1_1".owner = "riinr";
  inputs."special_functions-v0_1_1".repo = "flake-nimble";
  inputs."special_functions-v0_1_1".ref = "flake-pinning";
  inputs."special_functions-v0_1_1".dir = "nimpkgs/s/special_functions/v0_1_1";
  inputs."special_functions-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."special_functions-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}