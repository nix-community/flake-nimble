{
  description = ''A simple finite-state machine for @nim-lang'';
  inputs.src-fsm-master.flake = false;
  inputs.src-fsm-master.type = "github";
  inputs.src-fsm-master.owner = "ba0f3";
  inputs.src-fsm-master.repo = "fsm.nim";
  inputs.src-fsm-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-fsm-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fsm-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fsm-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}