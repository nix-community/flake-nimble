{
  description = ''unicode symbols'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."figures-master".type = "github";
  inputs."figures-master".owner = "riinr";
  inputs."figures-master".repo = "flake-nimble";
  inputs."figures-master".ref = "flake-pinning";
  inputs."figures-master".dir = "nimpkgs/f/figures/master";

    inputs."figures-v1_0_0".type = "github";
  inputs."figures-v1_0_0".owner = "riinr";
  inputs."figures-v1_0_0".repo = "flake-nimble";
  inputs."figures-v1_0_0".ref = "flake-pinning";
  inputs."figures-v1_0_0".dir = "nimpkgs/f/figures/v1_0_0";

    inputs."figures-v1_1_0".type = "github";
  inputs."figures-v1_1_0".owner = "riinr";
  inputs."figures-v1_1_0".repo = "flake-nimble";
  inputs."figures-v1_1_0".ref = "flake-pinning";
  inputs."figures-v1_1_0".dir = "nimpkgs/f/figures/v1_1_0";

    inputs."figures-v1_2_0".type = "github";
  inputs."figures-v1_2_0".owner = "riinr";
  inputs."figures-v1_2_0".repo = "flake-nimble";
  inputs."figures-v1_2_0".ref = "flake-pinning";
  inputs."figures-v1_2_0".dir = "nimpkgs/f/figures/v1_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}