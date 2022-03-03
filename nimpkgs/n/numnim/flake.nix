{
  description = ''A numpy like ndarray and dataframe library for nim-lang.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."numnim-master".type = "github";
  inputs."numnim-master".owner = "riinr";
  inputs."numnim-master".repo = "flake-nimble";
  inputs."numnim-master".ref = "flake-pinning";
  inputs."numnim-master".dir = "nimpkgs/n/numnim/master";
  inputs."numnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."numnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."numnim-v0_1_0".type = "github";
  inputs."numnim-v0_1_0".owner = "riinr";
  inputs."numnim-v0_1_0".repo = "flake-nimble";
  inputs."numnim-v0_1_0".ref = "flake-pinning";
  inputs."numnim-v0_1_0".dir = "nimpkgs/n/numnim/v0_1_0";
  inputs."numnim-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."numnim-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}