{
  description = ''A numpy like ndarray and dataframe library for nim-lang.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-numnim-v0_1_0.flake = false;
  inputs.src-numnim-v0_1_0.type = "github";
  inputs.src-numnim-v0_1_0.owner = "YesDrX";
  inputs.src-numnim-v0_1_0.repo = "numnim";
  inputs.src-numnim-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."nimblas".type = "github";
  inputs."nimblas".owner = "riinr";
  inputs."nimblas".repo = "flake-nimble";
  inputs."nimblas".ref = "flake-pinning";
  inputs."nimblas".dir = "nimpkgs/n/nimblas";

  
  inputs."nimlapack".type = "github";
  inputs."nimlapack".owner = "riinr";
  inputs."nimlapack".repo = "flake-nimble";
  inputs."nimlapack".ref = "flake-pinning";
  inputs."nimlapack".dir = "nimpkgs/n/nimlapack";

  outputs = { self, nixpkgs, flakeNimbleLib, src-numnim-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-numnim-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-numnim-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}