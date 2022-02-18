{
  description = ''An experimental deep learning framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."exprgrad-main".type = "github";
  inputs."exprgrad-main".owner = "riinr";
  inputs."exprgrad-main".repo = "flake-nimble";
  inputs."exprgrad-main".ref = "flake-pinning";
  inputs."exprgrad-main".dir = "nimpkgs/e/exprgrad/main";

    inputs."exprgrad-v0_0_1".type = "github";
  inputs."exprgrad-v0_0_1".owner = "riinr";
  inputs."exprgrad-v0_0_1".repo = "flake-nimble";
  inputs."exprgrad-v0_0_1".ref = "flake-pinning";
  inputs."exprgrad-v0_0_1".dir = "nimpkgs/e/exprgrad/v0_0_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}