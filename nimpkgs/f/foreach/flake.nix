{
  description = ''A sugary for loop with syntax for typechecking loop variables'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."foreach-master".type = "github";
  inputs."foreach-master".owner = "riinr";
  inputs."foreach-master".repo = "flake-nimble";
  inputs."foreach-master".ref = "flake-pinning";
  inputs."foreach-master".dir = "nimpkgs/f/foreach/master";
  inputs."foreach-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."foreach-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."foreach-1_0_0".type = "github";
  inputs."foreach-1_0_0".owner = "riinr";
  inputs."foreach-1_0_0".repo = "flake-nimble";
  inputs."foreach-1_0_0".ref = "flake-pinning";
  inputs."foreach-1_0_0".dir = "nimpkgs/f/foreach/1_0_0";
  inputs."foreach-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."foreach-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."foreach-1_0_1".type = "github";
  inputs."foreach-1_0_1".owner = "riinr";
  inputs."foreach-1_0_1".repo = "flake-nimble";
  inputs."foreach-1_0_1".ref = "flake-pinning";
  inputs."foreach-1_0_1".dir = "nimpkgs/f/foreach/1_0_1";
  inputs."foreach-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."foreach-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."foreach-1_0_2".type = "github";
  inputs."foreach-1_0_2".owner = "riinr";
  inputs."foreach-1_0_2".repo = "flake-nimble";
  inputs."foreach-1_0_2".ref = "flake-pinning";
  inputs."foreach-1_0_2".dir = "nimpkgs/f/foreach/1_0_2";
  inputs."foreach-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."foreach-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}