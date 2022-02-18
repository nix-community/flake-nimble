{
  description = ''Simple nimble package to log monotic timings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."timelog-main".type = "github";
  inputs."timelog-main".owner = "riinr";
  inputs."timelog-main".repo = "flake-nimble";
  inputs."timelog-main".ref = "flake-pinning";
  inputs."timelog-main".dir = "nimpkgs/t/timelog/main";

    inputs."timelog-v1_0_0".type = "github";
  inputs."timelog-v1_0_0".owner = "riinr";
  inputs."timelog-v1_0_0".repo = "flake-nimble";
  inputs."timelog-v1_0_0".ref = "flake-pinning";
  inputs."timelog-v1_0_0".dir = "nimpkgs/t/timelog/v1_0_0";

    inputs."timelog-v1_0_1".type = "github";
  inputs."timelog-v1_0_1".owner = "riinr";
  inputs."timelog-v1_0_1".repo = "flake-nimble";
  inputs."timelog-v1_0_1".ref = "flake-pinning";
  inputs."timelog-v1_0_1".dir = "nimpkgs/t/timelog/v1_0_1";

    inputs."timelog-v1_0_2".type = "github";
  inputs."timelog-v1_0_2".owner = "riinr";
  inputs."timelog-v1_0_2".repo = "flake-nimble";
  inputs."timelog-v1_0_2".ref = "flake-pinning";
  inputs."timelog-v1_0_2".dir = "nimpkgs/t/timelog/v1_0_2";

    inputs."timelog-v1_1_0".type = "github";
  inputs."timelog-v1_1_0".owner = "riinr";
  inputs."timelog-v1_1_0".repo = "flake-nimble";
  inputs."timelog-v1_1_0".ref = "flake-pinning";
  inputs."timelog-v1_1_0".dir = "nimpkgs/t/timelog/v1_1_0";

    inputs."timelog-v1_2_0".type = "github";
  inputs."timelog-v1_2_0".owner = "riinr";
  inputs."timelog-v1_2_0".repo = "flake-nimble";
  inputs."timelog-v1_2_0".ref = "flake-pinning";
  inputs."timelog-v1_2_0".dir = "nimpkgs/t/timelog/v1_2_0";

    inputs."timelog-v1_3_0".type = "github";
  inputs."timelog-v1_3_0".owner = "riinr";
  inputs."timelog-v1_3_0".repo = "flake-nimble";
  inputs."timelog-v1_3_0".ref = "flake-pinning";
  inputs."timelog-v1_3_0".dir = "nimpkgs/t/timelog/v1_3_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}