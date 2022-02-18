{
  description = ''measuring execution times written in nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."timeit-master".type = "github";
  inputs."timeit-master".owner = "riinr";
  inputs."timeit-master".repo = "flake-nimble";
  inputs."timeit-master".ref = "flake-pinning";
  inputs."timeit-master".dir = "nimpkgs/t/timeit/master";

    inputs."timeit-0_1_2".type = "github";
  inputs."timeit-0_1_2".owner = "riinr";
  inputs."timeit-0_1_2".repo = "flake-nimble";
  inputs."timeit-0_1_2".ref = "flake-pinning";
  inputs."timeit-0_1_2".dir = "nimpkgs/t/timeit/0_1_2";

    inputs."timeit-v0_1_0".type = "github";
  inputs."timeit-v0_1_0".owner = "riinr";
  inputs."timeit-v0_1_0".repo = "flake-nimble";
  inputs."timeit-v0_1_0".ref = "flake-pinning";
  inputs."timeit-v0_1_0".dir = "nimpkgs/t/timeit/v0_1_0";

    inputs."timeit-v0_1_1".type = "github";
  inputs."timeit-v0_1_1".owner = "riinr";
  inputs."timeit-v0_1_1".repo = "flake-nimble";
  inputs."timeit-v0_1_1".ref = "flake-pinning";
  inputs."timeit-v0_1_1".dir = "nimpkgs/t/timeit/v0_1_1";

    inputs."timeit-v0_1_6".type = "github";
  inputs."timeit-v0_1_6".owner = "riinr";
  inputs."timeit-v0_1_6".repo = "flake-nimble";
  inputs."timeit-v0_1_6".ref = "flake-pinning";
  inputs."timeit-v0_1_6".dir = "nimpkgs/t/timeit/v0_1_6";

    inputs."timeit-v0_1_8".type = "github";
  inputs."timeit-v0_1_8".owner = "riinr";
  inputs."timeit-v0_1_8".repo = "flake-nimble";
  inputs."timeit-v0_1_8".ref = "flake-pinning";
  inputs."timeit-v0_1_8".dir = "nimpkgs/t/timeit/v0_1_8";

    inputs."timeit-v0_2_0".type = "github";
  inputs."timeit-v0_2_0".owner = "riinr";
  inputs."timeit-v0_2_0".repo = "flake-nimble";
  inputs."timeit-v0_2_0".ref = "flake-pinning";
  inputs."timeit-v0_2_0".dir = "nimpkgs/t/timeit/v0_2_0";

    inputs."timeit-v0_2_1".type = "github";
  inputs."timeit-v0_2_1".owner = "riinr";
  inputs."timeit-v0_2_1".repo = "flake-nimble";
  inputs."timeit-v0_2_1".ref = "flake-pinning";
  inputs."timeit-v0_2_1".dir = "nimpkgs/t/timeit/v0_2_1";

    inputs."timeit-v0_2_2".type = "github";
  inputs."timeit-v0_2_2".owner = "riinr";
  inputs."timeit-v0_2_2".repo = "flake-nimble";
  inputs."timeit-v0_2_2".ref = "flake-pinning";
  inputs."timeit-v0_2_2".dir = "nimpkgs/t/timeit/v0_2_2";

    inputs."timeit-v0_2_4".type = "github";
  inputs."timeit-v0_2_4".owner = "riinr";
  inputs."timeit-v0_2_4".repo = "flake-nimble";
  inputs."timeit-v0_2_4".ref = "flake-pinning";
  inputs."timeit-v0_2_4".dir = "nimpkgs/t/timeit/v0_2_4";

    inputs."timeit-v0_2_6".type = "github";
  inputs."timeit-v0_2_6".owner = "riinr";
  inputs."timeit-v0_2_6".repo = "flake-nimble";
  inputs."timeit-v0_2_6".ref = "flake-pinning";
  inputs."timeit-v0_2_6".dir = "nimpkgs/t/timeit/v0_2_6";

    inputs."timeit-v0_2_8".type = "github";
  inputs."timeit-v0_2_8".owner = "riinr";
  inputs."timeit-v0_2_8".repo = "flake-nimble";
  inputs."timeit-v0_2_8".ref = "flake-pinning";
  inputs."timeit-v0_2_8".dir = "nimpkgs/t/timeit/v0_2_8";

    inputs."timeit-v0_3_0".type = "github";
  inputs."timeit-v0_3_0".owner = "riinr";
  inputs."timeit-v0_3_0".repo = "flake-nimble";
  inputs."timeit-v0_3_0".ref = "flake-pinning";
  inputs."timeit-v0_3_0".dir = "nimpkgs/t/timeit/v0_3_0";

    inputs."timeit-v0_3_2".type = "github";
  inputs."timeit-v0_3_2".owner = "riinr";
  inputs."timeit-v0_3_2".repo = "flake-nimble";
  inputs."timeit-v0_3_2".ref = "flake-pinning";
  inputs."timeit-v0_3_2".dir = "nimpkgs/t/timeit/v0_3_2";

    inputs."timeit-v0_3_4".type = "github";
  inputs."timeit-v0_3_4".owner = "riinr";
  inputs."timeit-v0_3_4".repo = "flake-nimble";
  inputs."timeit-v0_3_4".ref = "flake-pinning";
  inputs."timeit-v0_3_4".dir = "nimpkgs/t/timeit/v0_3_4";

    inputs."timeit-v0_3_6".type = "github";
  inputs."timeit-v0_3_6".owner = "riinr";
  inputs."timeit-v0_3_6".repo = "flake-nimble";
  inputs."timeit-v0_3_6".ref = "flake-pinning";
  inputs."timeit-v0_3_6".dir = "nimpkgs/t/timeit/v0_3_6";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}