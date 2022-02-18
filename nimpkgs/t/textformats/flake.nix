{
  description = ''Easy specification of text formats for structured data'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."textformats-main".type = "github";
  inputs."textformats-main".owner = "riinr";
  inputs."textformats-main".repo = "flake-nimble";
  inputs."textformats-main".ref = "flake-pinning";
  inputs."textformats-main".dir = "nimpkgs/t/textformats/main";

    inputs."textformats-1_2_0".type = "github";
  inputs."textformats-1_2_0".owner = "riinr";
  inputs."textformats-1_2_0".repo = "flake-nimble";
  inputs."textformats-1_2_0".ref = "flake-pinning";
  inputs."textformats-1_2_0".dir = "nimpkgs/t/textformats/1_2_0";

    inputs."textformats-v1_0_0".type = "github";
  inputs."textformats-v1_0_0".owner = "riinr";
  inputs."textformats-v1_0_0".repo = "flake-nimble";
  inputs."textformats-v1_0_0".ref = "flake-pinning";
  inputs."textformats-v1_0_0".dir = "nimpkgs/t/textformats/v1_0_0";

    inputs."textformats-v1_1_0".type = "github";
  inputs."textformats-v1_1_0".owner = "riinr";
  inputs."textformats-v1_1_0".repo = "flake-nimble";
  inputs."textformats-v1_1_0".ref = "flake-pinning";
  inputs."textformats-v1_1_0".dir = "nimpkgs/t/textformats/v1_1_0";

    inputs."textformats-v1_2_1".type = "github";
  inputs."textformats-v1_2_1".owner = "riinr";
  inputs."textformats-v1_2_1".repo = "flake-nimble";
  inputs."textformats-v1_2_1".ref = "flake-pinning";
  inputs."textformats-v1_2_1".dir = "nimpkgs/t/textformats/v1_2_1";

    inputs."textformats-v1_2_2".type = "github";
  inputs."textformats-v1_2_2".owner = "riinr";
  inputs."textformats-v1_2_2".repo = "flake-nimble";
  inputs."textformats-v1_2_2".ref = "flake-pinning";
  inputs."textformats-v1_2_2".dir = "nimpkgs/t/textformats/v1_2_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}