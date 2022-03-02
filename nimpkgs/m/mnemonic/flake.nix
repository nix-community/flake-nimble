{
  description = ''Create memorable sentences from byte sequences.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."mnemonic-master".type = "github";
  inputs."mnemonic-master".owner = "riinr";
  inputs."mnemonic-master".repo = "flake-nimble";
  inputs."mnemonic-master".ref = "flake-pinning";
  inputs."mnemonic-master".dir = "nimpkgs/m/mnemonic/master";
  inputs."mnemonic-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mnemonic-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mnemonic-v0_1_0".type = "github";
  inputs."mnemonic-v0_1_0".owner = "riinr";
  inputs."mnemonic-v0_1_0".repo = "flake-nimble";
  inputs."mnemonic-v0_1_0".ref = "flake-pinning";
  inputs."mnemonic-v0_1_0".dir = "nimpkgs/m/mnemonic/v0_1_0";
  inputs."mnemonic-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mnemonic-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mnemonic-v0_1_1".type = "github";
  inputs."mnemonic-v0_1_1".owner = "riinr";
  inputs."mnemonic-v0_1_1".repo = "flake-nimble";
  inputs."mnemonic-v0_1_1".ref = "flake-pinning";
  inputs."mnemonic-v0_1_1".dir = "nimpkgs/m/mnemonic/v0_1_1";
  inputs."mnemonic-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mnemonic-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mnemonic-v0_1_2".type = "github";
  inputs."mnemonic-v0_1_2".owner = "riinr";
  inputs."mnemonic-v0_1_2".repo = "flake-nimble";
  inputs."mnemonic-v0_1_2".ref = "flake-pinning";
  inputs."mnemonic-v0_1_2".dir = "nimpkgs/m/mnemonic/v0_1_2";
  inputs."mnemonic-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mnemonic-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mnemonic-v0_1_3".type = "github";
  inputs."mnemonic-v0_1_3".owner = "riinr";
  inputs."mnemonic-v0_1_3".repo = "flake-nimble";
  inputs."mnemonic-v0_1_3".ref = "flake-pinning";
  inputs."mnemonic-v0_1_3".dir = "nimpkgs/m/mnemonic/v0_1_3";
  inputs."mnemonic-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mnemonic-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}