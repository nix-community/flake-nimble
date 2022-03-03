{
  description = ''A simple finite-state machine for @nim-lang'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."fsm-master".type = "github";
  inputs."fsm-master".owner = "riinr";
  inputs."fsm-master".repo = "flake-nimble";
  inputs."fsm-master".ref = "flake-pinning";
  inputs."fsm-master".dir = "nimpkgs/f/fsm/master";
  inputs."fsm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fsm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}