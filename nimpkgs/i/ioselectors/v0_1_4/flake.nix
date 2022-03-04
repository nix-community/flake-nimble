{
  description = ''Selectors extension.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ioselectors-v0_1_4.flake = false;
  inputs.src-ioselectors-v0_1_4.type = "github";
  inputs.src-ioselectors-v0_1_4.owner = "xflywind";
  inputs.src-ioselectors-v0_1_4.repo = "ioselectors";
  inputs.src-ioselectors-v0_1_4.ref = "refs/tags/v0.1.4";
  inputs.src-ioselectors-v0_1_4.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."timerwheel".type = "github";
  inputs."timerwheel".owner = "riinr";
  inputs."timerwheel".repo = "flake-nimble";
  inputs."timerwheel".ref = "flake-pinning";
  inputs."timerwheel".dir = "nimpkgs/t/timerwheel";
  inputs."timerwheel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timerwheel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ioselectors-v0_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ioselectors-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ioselectors-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}