{
  description = ''Selectors extension.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ioselectors-v0_1_2.flake = false;
  inputs.src-ioselectors-v0_1_2.type = "github";
  inputs.src-ioselectors-v0_1_2.owner = "xflywind";
  inputs.src-ioselectors-v0_1_2.repo = "ioselectors";
  inputs.src-ioselectors-v0_1_2.ref = "refs/tags/v0.1.2";
  inputs.src-ioselectors-v0_1_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."wepoll".type = "github";
  # inputs."wepoll".owner = "riinr";
  # inputs."wepoll".repo = "flake-nimble";
  # inputs."wepoll".ref = "flake-pinning";
  # inputs."wepoll".dir = "nimpkgs/w/wepoll";
  # inputs."wepoll".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."wepoll".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."timerwheel".type = "github";
  # inputs."timerwheel".owner = "riinr";
  # inputs."timerwheel".repo = "flake-nimble";
  # inputs."timerwheel".ref = "flake-pinning";
  # inputs."timerwheel".dir = "nimpkgs/t/timerwheel";
  # inputs."timerwheel".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."timerwheel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ioselectors-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ioselectors-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ioselectors-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}