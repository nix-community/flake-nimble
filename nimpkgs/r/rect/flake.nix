{
  description = ''rect is a command to crop/paste rectangle text.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."rect-master".type = "github";
  inputs."rect-master".owner = "riinr";
  inputs."rect-master".repo = "flake-nimble";
  inputs."rect-master".ref = "flake-pinning";
  inputs."rect-master".dir = "nimpkgs/r/rect/master";
  inputs."rect-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rect-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rect-v1_0_0".type = "github";
  inputs."rect-v1_0_0".owner = "riinr";
  inputs."rect-v1_0_0".repo = "flake-nimble";
  inputs."rect-v1_0_0".ref = "flake-pinning";
  inputs."rect-v1_0_0".dir = "nimpkgs/r/rect/v1_0_0";
  inputs."rect-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rect-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rect-v1_0_1".type = "github";
  inputs."rect-v1_0_1".owner = "riinr";
  inputs."rect-v1_0_1".repo = "flake-nimble";
  inputs."rect-v1_0_1".ref = "flake-pinning";
  inputs."rect-v1_0_1".dir = "nimpkgs/r/rect/v1_0_1";
  inputs."rect-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rect-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}