{
  description = ''Nim interface to ANTLR4 listener/visitor via jsffi'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."antlr4nim-main".type = "github";
  inputs."antlr4nim-main".owner = "riinr";
  inputs."antlr4nim-main".repo = "flake-nimble";
  inputs."antlr4nim-main".ref = "flake-pinning";
  inputs."antlr4nim-main".dir = "nimpkgs/a/antlr4nim/main";

    inputs."antlr4nim-v0_1_0".type = "github";
  inputs."antlr4nim-v0_1_0".owner = "riinr";
  inputs."antlr4nim-v0_1_0".repo = "flake-nimble";
  inputs."antlr4nim-v0_1_0".ref = "flake-pinning";
  inputs."antlr4nim-v0_1_0".dir = "nimpkgs/a/antlr4nim/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}