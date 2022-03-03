{
  description = ''A simple interactive calculator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."cal-master".type = "github";
  inputs."cal-master".owner = "riinr";
  inputs."cal-master".repo = "flake-nimble";
  inputs."cal-master".ref = "flake-pinning";
  inputs."cal-master".dir = "nimpkgs/c/cal/master";
  inputs."cal-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cal-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cal-v0_2_0".type = "github";
  inputs."cal-v0_2_0".owner = "riinr";
  inputs."cal-v0_2_0".repo = "flake-nimble";
  inputs."cal-v0_2_0".ref = "flake-pinning";
  inputs."cal-v0_2_0".dir = "nimpkgs/c/cal/v0_2_0";
  inputs."cal-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cal-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}