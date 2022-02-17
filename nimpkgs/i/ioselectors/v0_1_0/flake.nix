{
  description = ''Selectors extension.'';
  inputs.src-ioselectors-v0_1_0.flake = false;
  inputs.src-ioselectors-v0_1_0.type = "github";
  inputs.src-ioselectors-v0_1_0.owner = "xflywind";
  inputs.src-ioselectors-v0_1_0.repo = "ioselectors";
  inputs.src-ioselectors-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."wepoll".type = "github";
  inputs."wepoll".owner = "riinr";
  inputs."wepoll".repo = "flake-nimble";
  inputs."wepoll".ref = "flake-pinning";
  inputs."wepoll".dir = "nimpkgs/w/wepoll";

  outputs = { self, nixpkgs, src-ioselectors-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ioselectors-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ioselectors-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}