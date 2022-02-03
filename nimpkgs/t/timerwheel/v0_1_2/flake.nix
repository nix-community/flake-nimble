{
  description = ''A high performance timer based on timerwheel for Nim.'';
  inputs.src-timerwheel-v0_1_2.flake = false;
  inputs.src-timerwheel-v0_1_2.type = "github";
  inputs.src-timerwheel-v0_1_2.owner = "xflywind";
  inputs.src-timerwheel-v0_1_2.repo = "timerwheel";
  inputs.src-timerwheel-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-timerwheel-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timerwheel-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-timerwheel-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}