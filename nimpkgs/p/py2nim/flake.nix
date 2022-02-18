{
  description = ''Py2Nim is a tool to translate Python code to Nim. The output is human-readable Nim code, meant to be tweaked by hand after the translation process.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."py2nim-main".type = "github";
  inputs."py2nim-main".owner = "riinr";
  inputs."py2nim-main".repo = "flake-nimble";
  inputs."py2nim-main".ref = "flake-pinning";
  inputs."py2nim-main".dir = "nimpkgs/p/py2nim/main";

    inputs."py2nim-v0_1_0".type = "github";
  inputs."py2nim-v0_1_0".owner = "riinr";
  inputs."py2nim-v0_1_0".repo = "flake-nimble";
  inputs."py2nim-v0_1_0".ref = "flake-pinning";
  inputs."py2nim-v0_1_0".dir = "nimpkgs/p/py2nim/v0_1_0";

    inputs."py2nim-v0_1_1".type = "github";
  inputs."py2nim-v0_1_1".owner = "riinr";
  inputs."py2nim-v0_1_1".repo = "flake-nimble";
  inputs."py2nim-v0_1_1".ref = "flake-pinning";
  inputs."py2nim-v0_1_1".dir = "nimpkgs/p/py2nim/v0_1_1";

    inputs."py2nim-v0_1_2".type = "github";
  inputs."py2nim-v0_1_2".owner = "riinr";
  inputs."py2nim-v0_1_2".repo = "flake-nimble";
  inputs."py2nim-v0_1_2".ref = "flake-pinning";
  inputs."py2nim-v0_1_2".dir = "nimpkgs/p/py2nim/v0_1_2";

    inputs."py2nim-v0_1_3".type = "github";
  inputs."py2nim-v0_1_3".owner = "riinr";
  inputs."py2nim-v0_1_3".repo = "flake-nimble";
  inputs."py2nim-v0_1_3".ref = "flake-pinning";
  inputs."py2nim-v0_1_3".dir = "nimpkgs/p/py2nim/v0_1_3";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}