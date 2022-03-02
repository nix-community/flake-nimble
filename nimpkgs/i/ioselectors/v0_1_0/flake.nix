{
  description = ''Selectors extension.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ioselectors-v0_1_0.flake = false;
  inputs.src-ioselectors-v0_1_0.type = "github";
  inputs.src-ioselectors-v0_1_0.owner = "xflywind";
  inputs.src-ioselectors-v0_1_0.repo = "ioselectors";
  inputs.src-ioselectors-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-ioselectors-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."wepoll".type = "github";
  # inputs."wepoll".owner = "riinr";
  # inputs."wepoll".repo = "flake-nimble";
  # inputs."wepoll".ref = "flake-pinning";
  # inputs."wepoll".dir = "nimpkgs/w/wepoll";
  # inputs."wepoll".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."wepoll".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ioselectors-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ioselectors-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ioselectors-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}