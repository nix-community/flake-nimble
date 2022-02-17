{
  description = ''This module provides the feature of algebraic data type and its associated method'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."algebraicdatas-main".type = "github";
  inputs."algebraicdatas-main".owner = "riinr";
  inputs."algebraicdatas-main".repo = "flake-nimble";
  inputs."algebraicdatas-main".ref = "flake-pinning";
  inputs."algebraicdatas-main".dir = "nimpkgs/a/algebraicdatas/main";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}