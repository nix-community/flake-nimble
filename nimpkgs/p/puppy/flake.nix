{
  description = ''Fetch url resources via HTTP and HTTPS.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."puppy-master".type = "github";
  inputs."puppy-master".owner = "riinr";
  inputs."puppy-master".repo = "flake-nimble";
  inputs."puppy-master".ref = "flake-pinning";
  inputs."puppy-master".dir = "nimpkgs/p/puppy/master";

    inputs."puppy-1_0_0".type = "github";
  inputs."puppy-1_0_0".owner = "riinr";
  inputs."puppy-1_0_0".repo = "flake-nimble";
  inputs."puppy-1_0_0".ref = "flake-pinning";
  inputs."puppy-1_0_0".dir = "nimpkgs/p/puppy/1_0_0";

    inputs."puppy-1_0_1".type = "github";
  inputs."puppy-1_0_1".owner = "riinr";
  inputs."puppy-1_0_1".repo = "flake-nimble";
  inputs."puppy-1_0_1".ref = "flake-pinning";
  inputs."puppy-1_0_1".dir = "nimpkgs/p/puppy/1_0_1";

    inputs."puppy-1_0_2".type = "github";
  inputs."puppy-1_0_2".owner = "riinr";
  inputs."puppy-1_0_2".repo = "flake-nimble";
  inputs."puppy-1_0_2".ref = "flake-pinning";
  inputs."puppy-1_0_2".dir = "nimpkgs/p/puppy/1_0_2";

    inputs."puppy-1_0_3".type = "github";
  inputs."puppy-1_0_3".owner = "riinr";
  inputs."puppy-1_0_3".repo = "flake-nimble";
  inputs."puppy-1_0_3".ref = "flake-pinning";
  inputs."puppy-1_0_3".dir = "nimpkgs/p/puppy/1_0_3";

    inputs."puppy-1_0_4".type = "github";
  inputs."puppy-1_0_4".owner = "riinr";
  inputs."puppy-1_0_4".repo = "flake-nimble";
  inputs."puppy-1_0_4".ref = "flake-pinning";
  inputs."puppy-1_0_4".dir = "nimpkgs/p/puppy/1_0_4";

    inputs."puppy-1_0_5".type = "github";
  inputs."puppy-1_0_5".owner = "riinr";
  inputs."puppy-1_0_5".repo = "flake-nimble";
  inputs."puppy-1_0_5".ref = "flake-pinning";
  inputs."puppy-1_0_5".dir = "nimpkgs/p/puppy/1_0_5";

    inputs."puppy-1_0_6".type = "github";
  inputs."puppy-1_0_6".owner = "riinr";
  inputs."puppy-1_0_6".repo = "flake-nimble";
  inputs."puppy-1_0_6".ref = "flake-pinning";
  inputs."puppy-1_0_6".dir = "nimpkgs/p/puppy/1_0_6";

    inputs."puppy-1_1_0".type = "github";
  inputs."puppy-1_1_0".owner = "riinr";
  inputs."puppy-1_1_0".repo = "flake-nimble";
  inputs."puppy-1_1_0".ref = "flake-pinning";
  inputs."puppy-1_1_0".dir = "nimpkgs/p/puppy/1_1_0";

    inputs."puppy-1_2_0".type = "github";
  inputs."puppy-1_2_0".owner = "riinr";
  inputs."puppy-1_2_0".repo = "flake-nimble";
  inputs."puppy-1_2_0".ref = "flake-pinning";
  inputs."puppy-1_2_0".dir = "nimpkgs/p/puppy/1_2_0";

    inputs."puppy-1_2_1".type = "github";
  inputs."puppy-1_2_1".owner = "riinr";
  inputs."puppy-1_2_1".repo = "flake-nimble";
  inputs."puppy-1_2_1".ref = "flake-pinning";
  inputs."puppy-1_2_1".dir = "nimpkgs/p/puppy/1_2_1";

    inputs."puppy-1_3_0".type = "github";
  inputs."puppy-1_3_0".owner = "riinr";
  inputs."puppy-1_3_0".repo = "flake-nimble";
  inputs."puppy-1_3_0".ref = "flake-pinning";
  inputs."puppy-1_3_0".dir = "nimpkgs/p/puppy/1_3_0";

    inputs."puppy-1_4_0".type = "github";
  inputs."puppy-1_4_0".owner = "riinr";
  inputs."puppy-1_4_0".repo = "flake-nimble";
  inputs."puppy-1_4_0".ref = "flake-pinning";
  inputs."puppy-1_4_0".dir = "nimpkgs/p/puppy/1_4_0";

    inputs."puppy-1_5_0".type = "github";
  inputs."puppy-1_5_0".owner = "riinr";
  inputs."puppy-1_5_0".repo = "flake-nimble";
  inputs."puppy-1_5_0".ref = "flake-pinning";
  inputs."puppy-1_5_0".dir = "nimpkgs/p/puppy/1_5_0";

    inputs."puppy-1_5_1".type = "github";
  inputs."puppy-1_5_1".owner = "riinr";
  inputs."puppy-1_5_1".repo = "flake-nimble";
  inputs."puppy-1_5_1".ref = "flake-pinning";
  inputs."puppy-1_5_1".dir = "nimpkgs/p/puppy/1_5_1";

    inputs."puppy-1_5_2".type = "github";
  inputs."puppy-1_5_2".owner = "riinr";
  inputs."puppy-1_5_2".repo = "flake-nimble";
  inputs."puppy-1_5_2".ref = "flake-pinning";
  inputs."puppy-1_5_2".dir = "nimpkgs/p/puppy/1_5_2";

    inputs."puppy-1_5_3".type = "github";
  inputs."puppy-1_5_3".owner = "riinr";
  inputs."puppy-1_5_3".repo = "flake-nimble";
  inputs."puppy-1_5_3".ref = "flake-pinning";
  inputs."puppy-1_5_3".dir = "nimpkgs/p/puppy/1_5_3";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}