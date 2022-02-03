{
  description = ''A high performance timer based on timerwheel for Nim.'';
  inputs.src-timerwheel-master.flake = false;
  inputs.src-timerwheel-master.type = "github";
  inputs.src-timerwheel-master.owner = "xflywind";
  inputs.src-timerwheel-master.repo = "timerwheel";
  inputs.src-timerwheel-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-timerwheel-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timerwheel-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-timerwheel-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}