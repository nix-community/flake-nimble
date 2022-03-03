{
  description = ''Animated GIF writing library based on jo_gif'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."gifwriter-master".type = "github";
  inputs."gifwriter-master".owner = "riinr";
  inputs."gifwriter-master".repo = "flake-nimble";
  inputs."gifwriter-master".ref = "flake-pinning";
  inputs."gifwriter-master".dir = "nimpkgs/g/gifwriter/master";
  inputs."gifwriter-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gifwriter-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gifwriter-v0_1_0".type = "github";
  inputs."gifwriter-v0_1_0".owner = "riinr";
  inputs."gifwriter-v0_1_0".repo = "flake-nimble";
  inputs."gifwriter-v0_1_0".ref = "flake-pinning";
  inputs."gifwriter-v0_1_0".dir = "nimpkgs/g/gifwriter/v0_1_0";
  inputs."gifwriter-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gifwriter-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}