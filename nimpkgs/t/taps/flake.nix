{
  description = ''Transport Services Interface'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
    inputs."taps-0_2_1".type = "github";
  inputs."taps-0_2_1".owner = "riinr";
  inputs."taps-0_2_1".repo = "flake-nimble";
  inputs."taps-0_2_1".ref = "flake-pinning";
  inputs."taps-0_2_1".dir = "nimpkgs/t/taps/0_2_1";
  inputs."taps-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taps-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."taps-0_2_2".type = "github";
  inputs."taps-0_2_2".owner = "riinr";
  inputs."taps-0_2_2".repo = "flake-nimble";
  inputs."taps-0_2_2".ref = "flake-pinning";
  inputs."taps-0_2_2".dir = "nimpkgs/t/taps/0_2_2";
  inputs."taps-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taps-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."taps-v0_1_0".type = "github";
  inputs."taps-v0_1_0".owner = "riinr";
  inputs."taps-v0_1_0".repo = "flake-nimble";
  inputs."taps-v0_1_0".ref = "flake-pinning";
  inputs."taps-v0_1_0".dir = "nimpkgs/t/taps/v0_1_0";
  inputs."taps-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taps-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."taps-v0_2_0".type = "github";
  inputs."taps-v0_2_0".owner = "riinr";
  inputs."taps-v0_2_0".repo = "flake-nimble";
  inputs."taps-v0_2_0".ref = "flake-pinning";
  inputs."taps-v0_2_0".dir = "nimpkgs/t/taps/v0_2_0";
  inputs."taps-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taps-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}