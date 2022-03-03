{
  description = ''Simple screenshot library & cli tool made in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nsu-master".type = "github";
  inputs."nsu-master".owner = "riinr";
  inputs."nsu-master".repo = "flake-nimble";
  inputs."nsu-master".ref = "flake-pinning";
  inputs."nsu-master".dir = "nimpkgs/n/nsu/master";
  inputs."nsu-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nsu-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nsu-v0_1_4".type = "github";
  inputs."nsu-v0_1_4".owner = "riinr";
  inputs."nsu-v0_1_4".repo = "flake-nimble";
  inputs."nsu-v0_1_4".ref = "flake-pinning";
  inputs."nsu-v0_1_4".dir = "nimpkgs/n/nsu/v0_1_4";
  inputs."nsu-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nsu-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nsu-v0_1_5".type = "github";
  inputs."nsu-v0_1_5".owner = "riinr";
  inputs."nsu-v0_1_5".repo = "flake-nimble";
  inputs."nsu-v0_1_5".ref = "flake-pinning";
  inputs."nsu-v0_1_5".dir = "nimpkgs/n/nsu/v0_1_5";
  inputs."nsu-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nsu-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}