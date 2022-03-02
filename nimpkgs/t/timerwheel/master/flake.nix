{
  description = ''A high performance timer based on timerwheel for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-timerwheel-master.flake = false;
  inputs.src-timerwheel-master.type = "github";
  inputs.src-timerwheel-master.owner = "xflywind";
  inputs.src-timerwheel-master.repo = "timerwheel";
  inputs.src-timerwheel-master.ref = "refs/heads/master";
  inputs.src-timerwheel-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-timerwheel-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timerwheel-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-timerwheel-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}