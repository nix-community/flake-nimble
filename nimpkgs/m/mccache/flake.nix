{
  description = ''mccache package: in-memory caching'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."mccache-master".type = "github";
  inputs."mccache-master".owner = "riinr";
  inputs."mccache-master".repo = "flake-nimble";
  inputs."mccache-master".ref = "flake-pinning";
  inputs."mccache-master".dir = "nimpkgs/m/mccache/master";

    inputs."mccache-v0_1_1".type = "github";
  inputs."mccache-v0_1_1".owner = "riinr";
  inputs."mccache-v0_1_1".repo = "flake-nimble";
  inputs."mccache-v0_1_1".ref = "flake-pinning";
  inputs."mccache-v0_1_1".dir = "nimpkgs/m/mccache/v0_1_1";

    inputs."mccache-v0_1_2".type = "github";
  inputs."mccache-v0_1_2".owner = "riinr";
  inputs."mccache-v0_1_2".repo = "flake-nimble";
  inputs."mccache-v0_1_2".ref = "flake-pinning";
  inputs."mccache-v0_1_2".dir = "nimpkgs/m/mccache/v0_1_2";

    inputs."mccache-v0_2_0".type = "github";
  inputs."mccache-v0_2_0".owner = "riinr";
  inputs."mccache-v0_2_0".repo = "flake-nimble";
  inputs."mccache-v0_2_0".ref = "flake-pinning";
  inputs."mccache-v0_2_0".dir = "nimpkgs/m/mccache/v0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}