{
  description = ''Selectors extension.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ioselectors-v0_1_6.flake = false;
  inputs.src-ioselectors-v0_1_6.type = "github";
  inputs.src-ioselectors-v0_1_6.owner = "xflywind";
  inputs.src-ioselectors-v0_1_6.repo = "ioselectors";
  inputs.src-ioselectors-v0_1_6.ref = "refs/tags/v0.1.6";
  
  
  inputs."timerwheel".type = "github";
  inputs."timerwheel".owner = "riinr";
  inputs."timerwheel".repo = "flake-nimble";
  inputs."timerwheel".ref = "flake-pinning";
  inputs."timerwheel".dir = "nimpkgs/t/timerwheel";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ioselectors-v0_1_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ioselectors-v0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ioselectors-v0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}