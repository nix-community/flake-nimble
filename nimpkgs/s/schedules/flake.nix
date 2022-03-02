{
  description = ''A Nim scheduler library that lets you kick off jobs at regular intervals.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."schedules-master".type = "github";
  inputs."schedules-master".owner = "riinr";
  inputs."schedules-master".repo = "flake-nimble";
  inputs."schedules-master".ref = "flake-pinning";
  inputs."schedules-master".dir = "nimpkgs/s/schedules/master";
  inputs."schedules-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."schedules-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."schedules-v0_1_1".type = "github";
  inputs."schedules-v0_1_1".owner = "riinr";
  inputs."schedules-v0_1_1".repo = "flake-nimble";
  inputs."schedules-v0_1_1".ref = "flake-pinning";
  inputs."schedules-v0_1_1".dir = "nimpkgs/s/schedules/v0_1_1";
  inputs."schedules-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."schedules-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."schedules-v0_1_2".type = "github";
  inputs."schedules-v0_1_2".owner = "riinr";
  inputs."schedules-v0_1_2".repo = "flake-nimble";
  inputs."schedules-v0_1_2".ref = "flake-pinning";
  inputs."schedules-v0_1_2".dir = "nimpkgs/s/schedules/v0_1_2";
  inputs."schedules-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."schedules-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."schedules-v0_2_0".type = "github";
  inputs."schedules-v0_2_0".owner = "riinr";
  inputs."schedules-v0_2_0".repo = "flake-nimble";
  inputs."schedules-v0_2_0".ref = "flake-pinning";
  inputs."schedules-v0_2_0".dir = "nimpkgs/s/schedules/v0_2_0";
  inputs."schedules-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."schedules-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}