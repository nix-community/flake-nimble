{
  description = ''Wrapper around the GMP bindings for the Nim language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."bignum-master".type = "github";
  inputs."bignum-master".owner = "riinr";
  inputs."bignum-master".repo = "flake-nimble";
  inputs."bignum-master".ref = "flake-pinning";
  inputs."bignum-master".dir = "nimpkgs/b/bignum/master";

    inputs."bignum-1_0_2".type = "github";
  inputs."bignum-1_0_2".owner = "riinr";
  inputs."bignum-1_0_2".repo = "flake-nimble";
  inputs."bignum-1_0_2".ref = "flake-pinning";
  inputs."bignum-1_0_2".dir = "nimpkgs/b/bignum/1_0_2";

    inputs."bignum-1_0_3".type = "github";
  inputs."bignum-1_0_3".owner = "riinr";
  inputs."bignum-1_0_3".repo = "flake-nimble";
  inputs."bignum-1_0_3".ref = "flake-pinning";
  inputs."bignum-1_0_3".dir = "nimpkgs/b/bignum/1_0_3";

    inputs."bignum-1_0_4".type = "github";
  inputs."bignum-1_0_4".owner = "riinr";
  inputs."bignum-1_0_4".repo = "flake-nimble";
  inputs."bignum-1_0_4".ref = "flake-pinning";
  inputs."bignum-1_0_4".dir = "nimpkgs/b/bignum/1_0_4";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}