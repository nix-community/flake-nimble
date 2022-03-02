{
  description = ''A high performance timer based on timerwheel for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."timerwheel-master".type = "github";
  inputs."timerwheel-master".owner = "riinr";
  inputs."timerwheel-master".repo = "flake-nimble";
  inputs."timerwheel-master".ref = "flake-pinning";
  inputs."timerwheel-master".dir = "nimpkgs/t/timerwheel/master";
  inputs."timerwheel-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timerwheel-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."timerwheel-v0_1_2".type = "github";
  inputs."timerwheel-v0_1_2".owner = "riinr";
  inputs."timerwheel-v0_1_2".repo = "flake-nimble";
  inputs."timerwheel-v0_1_2".ref = "flake-pinning";
  inputs."timerwheel-v0_1_2".dir = "nimpkgs/t/timerwheel/v0_1_2";
  inputs."timerwheel-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timerwheel-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}