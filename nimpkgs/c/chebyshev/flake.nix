{
  description = ''Chebyshev approximation.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."chebyshev-master".type = "github";
  inputs."chebyshev-master".owner = "riinr";
  inputs."chebyshev-master".repo = "flake-nimble";
  inputs."chebyshev-master".ref = "flake-pinning";
  inputs."chebyshev-master".dir = "nimpkgs/c/chebyshev/master";

    inputs."chebyshev-v0_0_0".type = "github";
  inputs."chebyshev-v0_0_0".owner = "riinr";
  inputs."chebyshev-v0_0_0".repo = "flake-nimble";
  inputs."chebyshev-v0_0_0".ref = "flake-pinning";
  inputs."chebyshev-v0_0_0".dir = "nimpkgs/c/chebyshev/v0_0_0";

    inputs."chebyshev-v0_1_0".type = "github";
  inputs."chebyshev-v0_1_0".owner = "riinr";
  inputs."chebyshev-v0_1_0".repo = "flake-nimble";
  inputs."chebyshev-v0_1_0".ref = "flake-pinning";
  inputs."chebyshev-v0_1_0".dir = "nimpkgs/c/chebyshev/v0_1_0";

    inputs."chebyshev-v0_2_0".type = "github";
  inputs."chebyshev-v0_2_0".owner = "riinr";
  inputs."chebyshev-v0_2_0".repo = "flake-nimble";
  inputs."chebyshev-v0_2_0".ref = "flake-pinning";
  inputs."chebyshev-v0_2_0".dir = "nimpkgs/c/chebyshev/v0_2_0";

    inputs."chebyshev-v0_2_1".type = "github";
  inputs."chebyshev-v0_2_1".owner = "riinr";
  inputs."chebyshev-v0_2_1".repo = "flake-nimble";
  inputs."chebyshev-v0_2_1".ref = "flake-pinning";
  inputs."chebyshev-v0_2_1".dir = "nimpkgs/c/chebyshev/v0_2_1";

    inputs."chebyshev-v0_2_2".type = "github";
  inputs."chebyshev-v0_2_2".owner = "riinr";
  inputs."chebyshev-v0_2_2".repo = "flake-nimble";
  inputs."chebyshev-v0_2_2".ref = "flake-pinning";
  inputs."chebyshev-v0_2_2".dir = "nimpkgs/c/chebyshev/v0_2_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}