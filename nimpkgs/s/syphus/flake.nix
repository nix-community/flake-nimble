{
  description = ''An implementation of the tabu search heuristic in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."syphus-master".type = "github";
  inputs."syphus-master".owner = "riinr";
  inputs."syphus-master".repo = "flake-nimble";
  inputs."syphus-master".ref = "flake-pinning";
  inputs."syphus-master".dir = "nimpkgs/s/syphus/master";

    inputs."syphus-0_4".type = "github";
  inputs."syphus-0_4".owner = "riinr";
  inputs."syphus-0_4".repo = "flake-nimble";
  inputs."syphus-0_4".ref = "flake-pinning";
  inputs."syphus-0_4".dir = "nimpkgs/s/syphus/0_4";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}