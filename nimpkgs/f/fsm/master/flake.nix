{
  description = ''A simple finite-state machine for @nim-lang'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-fsm-master.flake = false;
  inputs.src-fsm-master.type = "github";
  inputs.src-fsm-master.owner = "ba0f3";
  inputs.src-fsm-master.repo = "fsm.nim";
  inputs.src-fsm-master.ref = "refs/heads/master";
  inputs.src-fsm-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fsm-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fsm-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fsm-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}