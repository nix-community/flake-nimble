{
  description = ''Nim Static Blog & Site Generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."pine-master".type = "github";
  inputs."pine-master".owner = "riinr";
  inputs."pine-master".repo = "flake-nimble";
  inputs."pine-master".ref = "flake-pinning";
  inputs."pine-master".dir = "nimpkgs/p/pine/master";

    inputs."pine-v0_1_0".type = "github";
  inputs."pine-v0_1_0".owner = "riinr";
  inputs."pine-v0_1_0".repo = "flake-nimble";
  inputs."pine-v0_1_0".ref = "flake-pinning";
  inputs."pine-v0_1_0".dir = "nimpkgs/p/pine/v0_1_0";

    inputs."pine-v0_1_1".type = "github";
  inputs."pine-v0_1_1".owner = "riinr";
  inputs."pine-v0_1_1".repo = "flake-nimble";
  inputs."pine-v0_1_1".ref = "flake-pinning";
  inputs."pine-v0_1_1".dir = "nimpkgs/p/pine/v0_1_1";

    inputs."pine-v0_1_2".type = "github";
  inputs."pine-v0_1_2".owner = "riinr";
  inputs."pine-v0_1_2".repo = "flake-nimble";
  inputs."pine-v0_1_2".ref = "flake-pinning";
  inputs."pine-v0_1_2".dir = "nimpkgs/p/pine/v0_1_2";

    inputs."pine-v0_2_0".type = "github";
  inputs."pine-v0_2_0".owner = "riinr";
  inputs."pine-v0_2_0".repo = "flake-nimble";
  inputs."pine-v0_2_0".ref = "flake-pinning";
  inputs."pine-v0_2_0".dir = "nimpkgs/p/pine/v0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}