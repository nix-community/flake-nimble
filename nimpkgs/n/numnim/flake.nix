{
  description = ''A numpy like ndarray and dataframe library for nim-lang.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."numnim-master".type = "github";
  inputs."numnim-master".owner = "riinr";
  inputs."numnim-master".repo = "flake-nimble";
  inputs."numnim-master".ref = "flake-pinning";
  inputs."numnim-master".dir = "nimpkgs/n/numnim/master";

    inputs."numnim-v0_1_0".type = "github";
  inputs."numnim-v0_1_0".owner = "riinr";
  inputs."numnim-v0_1_0".repo = "flake-nimble";
  inputs."numnim-v0_1_0".ref = "flake-pinning";
  inputs."numnim-v0_1_0".dir = "nimpkgs/n/numnim/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}