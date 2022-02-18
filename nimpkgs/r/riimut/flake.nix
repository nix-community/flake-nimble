{
  description = ''Transform latin letters to runes & vice versa. Four runic dialects available.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."riimut-main".type = "github";
  inputs."riimut-main".owner = "riinr";
  inputs."riimut-main".repo = "flake-nimble";
  inputs."riimut-main".ref = "flake-pinning";
  inputs."riimut-main".dir = "nimpkgs/r/riimut/main";

    inputs."riimut-v1_0_0".type = "github";
  inputs."riimut-v1_0_0".owner = "riinr";
  inputs."riimut-v1_0_0".repo = "flake-nimble";
  inputs."riimut-v1_0_0".ref = "flake-pinning";
  inputs."riimut-v1_0_0".dir = "nimpkgs/r/riimut/v1_0_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}