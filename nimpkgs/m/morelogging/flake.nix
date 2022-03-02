{
  description = ''Logging library with support for async IO, multithreading, Journald.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."morelogging-master".type = "github";
  inputs."morelogging-master".owner = "riinr";
  inputs."morelogging-master".repo = "flake-nimble";
  inputs."morelogging-master".ref = "flake-pinning";
  inputs."morelogging-master".dir = "nimpkgs/m/morelogging/master";
  inputs."morelogging-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."morelogging-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."morelogging-0_1_1".type = "github";
  inputs."morelogging-0_1_1".owner = "riinr";
  inputs."morelogging-0_1_1".repo = "flake-nimble";
  inputs."morelogging-0_1_1".ref = "flake-pinning";
  inputs."morelogging-0_1_1".dir = "nimpkgs/m/morelogging/0_1_1";
  inputs."morelogging-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."morelogging-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."morelogging-0_1_2".type = "github";
  inputs."morelogging-0_1_2".owner = "riinr";
  inputs."morelogging-0_1_2".repo = "flake-nimble";
  inputs."morelogging-0_1_2".ref = "flake-pinning";
  inputs."morelogging-0_1_2".dir = "nimpkgs/m/morelogging/0_1_2";
  inputs."morelogging-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."morelogging-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."morelogging-0_1_3".type = "github";
  inputs."morelogging-0_1_3".owner = "riinr";
  inputs."morelogging-0_1_3".repo = "flake-nimble";
  inputs."morelogging-0_1_3".ref = "flake-pinning";
  inputs."morelogging-0_1_3".dir = "nimpkgs/m/morelogging/0_1_3";
  inputs."morelogging-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."morelogging-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."morelogging-0_1_4".type = "github";
  inputs."morelogging-0_1_4".owner = "riinr";
  inputs."morelogging-0_1_4".repo = "flake-nimble";
  inputs."morelogging-0_1_4".ref = "flake-pinning";
  inputs."morelogging-0_1_4".dir = "nimpkgs/m/morelogging/0_1_4";
  inputs."morelogging-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."morelogging-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."morelogging-0_2_0".type = "github";
  inputs."morelogging-0_2_0".owner = "riinr";
  inputs."morelogging-0_2_0".repo = "flake-nimble";
  inputs."morelogging-0_2_0".ref = "flake-pinning";
  inputs."morelogging-0_2_0".dir = "nimpkgs/m/morelogging/0_2_0";
  inputs."morelogging-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."morelogging-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}