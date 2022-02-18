{
  description = ''a collection of useful macro functionalities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."macroplus-main".type = "github";
  inputs."macroplus-main".owner = "riinr";
  inputs."macroplus-main".repo = "flake-nimble";
  inputs."macroplus-main".ref = "flake-pinning";
  inputs."macroplus-main".dir = "nimpkgs/m/macroplus/main";

    inputs."macroplus-0_1_17".type = "github";
  inputs."macroplus-0_1_17".owner = "riinr";
  inputs."macroplus-0_1_17".repo = "flake-nimble";
  inputs."macroplus-0_1_17".ref = "flake-pinning";
  inputs."macroplus-0_1_17".dir = "nimpkgs/m/macroplus/0_1_17";

    inputs."macroplus-0_1_20".type = "github";
  inputs."macroplus-0_1_20".owner = "riinr";
  inputs."macroplus-0_1_20".repo = "flake-nimble";
  inputs."macroplus-0_1_20".ref = "flake-pinning";
  inputs."macroplus-0_1_20".dir = "nimpkgs/m/macroplus/0_1_20";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}