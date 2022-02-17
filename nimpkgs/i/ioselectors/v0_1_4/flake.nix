{
  description = ''Selectors extension.'';
  inputs.src-ioselectors-v0_1_4.flake = false;
  inputs.src-ioselectors-v0_1_4.type = "github";
  inputs.src-ioselectors-v0_1_4.owner = "xflywind";
  inputs.src-ioselectors-v0_1_4.repo = "ioselectors";
  inputs.src-ioselectors-v0_1_4.ref = "refs/tags/v0.1.4";
  
  
  inputs."timerwheel".type = "github";
  inputs."timerwheel".owner = "riinr";
  inputs."timerwheel".repo = "flake-nimble";
  inputs."timerwheel".ref = "flake-pinning";
  inputs."timerwheel".dir = "nimpkgs/t/timerwheel";

  outputs = { self, nixpkgs, src-ioselectors-v0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ioselectors-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ioselectors-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}