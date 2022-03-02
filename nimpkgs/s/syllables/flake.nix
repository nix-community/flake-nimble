{
  description = ''Syllable estimation for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."syllables-main".type = "github";
  inputs."syllables-main".owner = "riinr";
  inputs."syllables-main".repo = "flake-nimble";
  inputs."syllables-main".ref = "flake-pinning";
  inputs."syllables-main".dir = "nimpkgs/s/syllables/main";
  inputs."syllables-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syllables-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."syllables-v1_0_0".type = "github";
  inputs."syllables-v1_0_0".owner = "riinr";
  inputs."syllables-v1_0_0".repo = "flake-nimble";
  inputs."syllables-v1_0_0".ref = "flake-pinning";
  inputs."syllables-v1_0_0".dir = "nimpkgs/s/syllables/v1_0_0";
  inputs."syllables-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syllables-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}