{
  description = ''Bindings for Miniz lib.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."miniz-master".type = "github";
  inputs."miniz-master".owner = "riinr";
  inputs."miniz-master".repo = "flake-nimble";
  inputs."miniz-master".ref = "flake-pinning";
  inputs."miniz-master".dir = "nimpkgs/m/miniz/master";

    inputs."miniz-0_1_0".type = "github";
  inputs."miniz-0_1_0".owner = "riinr";
  inputs."miniz-0_1_0".repo = "flake-nimble";
  inputs."miniz-0_1_0".ref = "flake-pinning";
  inputs."miniz-0_1_0".dir = "nimpkgs/m/miniz/0_1_0";

    inputs."miniz-0_2_0".type = "github";
  inputs."miniz-0_2_0".owner = "riinr";
  inputs."miniz-0_2_0".repo = "flake-nimble";
  inputs."miniz-0_2_0".ref = "flake-pinning";
  inputs."miniz-0_2_0".dir = "nimpkgs/m/miniz/0_2_0";

    inputs."miniz-v0_1_0".type = "github";
  inputs."miniz-v0_1_0".owner = "riinr";
  inputs."miniz-v0_1_0".repo = "flake-nimble";
  inputs."miniz-v0_1_0".ref = "flake-pinning";
  inputs."miniz-v0_1_0".dir = "nimpkgs/m/miniz/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}