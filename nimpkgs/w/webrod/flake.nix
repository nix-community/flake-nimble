{
  description = ''webrod'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."webrod-main".type = "github";
  inputs."webrod-main".owner = "riinr";
  inputs."webrod-main".repo = "flake-nimble";
  inputs."webrod-main".ref = "flake-pinning";
  inputs."webrod-main".dir = "nimpkgs/w/webrod/main";

    inputs."webrod-0_1_0".type = "github";
  inputs."webrod-0_1_0".owner = "riinr";
  inputs."webrod-0_1_0".repo = "flake-nimble";
  inputs."webrod-0_1_0".ref = "flake-pinning";
  inputs."webrod-0_1_0".dir = "nimpkgs/w/webrod/0_1_0";

    inputs."webrod-0_2_0".type = "github";
  inputs."webrod-0_2_0".owner = "riinr";
  inputs."webrod-0_2_0".repo = "flake-nimble";
  inputs."webrod-0_2_0".ref = "flake-pinning";
  inputs."webrod-0_2_0".dir = "nimpkgs/w/webrod/0_2_0";

    inputs."webrod-0_3_0".type = "github";
  inputs."webrod-0_3_0".owner = "riinr";
  inputs."webrod-0_3_0".repo = "flake-nimble";
  inputs."webrod-0_3_0".ref = "flake-pinning";
  inputs."webrod-0_3_0".dir = "nimpkgs/w/webrod/0_3_0";

    inputs."webrod-0_4_0".type = "github";
  inputs."webrod-0_4_0".owner = "riinr";
  inputs."webrod-0_4_0".repo = "flake-nimble";
  inputs."webrod-0_4_0".ref = "flake-pinning";
  inputs."webrod-0_4_0".dir = "nimpkgs/w/webrod/0_4_0";

    inputs."webrod-0_5_0".type = "github";
  inputs."webrod-0_5_0".owner = "riinr";
  inputs."webrod-0_5_0".repo = "flake-nimble";
  inputs."webrod-0_5_0".ref = "flake-pinning";
  inputs."webrod-0_5_0".dir = "nimpkgs/w/webrod/0_5_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}