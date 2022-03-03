{
  description = ''A game engine for rapid development and easy prototyping'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."rapid-master".type = "github";
  inputs."rapid-master".owner = "riinr";
  inputs."rapid-master".repo = "flake-nimble";
  inputs."rapid-master".ref = "flake-pinning";
  inputs."rapid-master".dir = "nimpkgs/r/rapid/master";
  inputs."rapid-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rapid-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rapid-2019_1".type = "github";
  inputs."rapid-2019_1".owner = "riinr";
  inputs."rapid-2019_1".repo = "flake-nimble";
  inputs."rapid-2019_1".ref = "flake-pinning";
  inputs."rapid-2019_1".dir = "nimpkgs/r/rapid/2019_1";
  inputs."rapid-2019_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rapid-2019_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}