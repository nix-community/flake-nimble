{
  description = ''Humanize elapsed time'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."eternity-master".type = "github";
  inputs."eternity-master".owner = "riinr";
  inputs."eternity-master".repo = "flake-nimble";
  inputs."eternity-master".ref = "flake-pinning";
  inputs."eternity-master".dir = "nimpkgs/e/eternity/master";
  inputs."eternity-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eternity-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eternity-v0_2".type = "github";
  inputs."eternity-v0_2".owner = "riinr";
  inputs."eternity-v0_2".repo = "flake-nimble";
  inputs."eternity-v0_2".ref = "flake-pinning";
  inputs."eternity-v0_2".dir = "nimpkgs/e/eternity/v0_2";
  inputs."eternity-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eternity-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eternity-v0_3_0".type = "github";
  inputs."eternity-v0_3_0".owner = "riinr";
  inputs."eternity-v0_3_0".repo = "flake-nimble";
  inputs."eternity-v0_3_0".ref = "flake-pinning";
  inputs."eternity-v0_3_0".dir = "nimpkgs/e/eternity/v0_3_0";
  inputs."eternity-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eternity-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}