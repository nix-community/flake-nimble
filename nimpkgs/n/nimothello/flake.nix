{
  description = ''A teminal othello (reversi) in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimothello-master".type = "github";
  inputs."nimothello-master".owner = "riinr";
  inputs."nimothello-master".repo = "flake-nimble";
  inputs."nimothello-master".ref = "flake-pinning";
  inputs."nimothello-master".dir = "nimpkgs/n/nimothello/master";
  inputs."nimothello-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimothello-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimothello-v1_0_0".type = "github";
  inputs."nimothello-v1_0_0".owner = "riinr";
  inputs."nimothello-v1_0_0".repo = "flake-nimble";
  inputs."nimothello-v1_0_0".ref = "flake-pinning";
  inputs."nimothello-v1_0_0".dir = "nimpkgs/n/nimothello/v1_0_0";
  inputs."nimothello-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimothello-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}