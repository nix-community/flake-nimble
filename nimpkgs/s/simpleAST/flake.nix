{
  description = ''Simple AST in NIM'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."simpleAST-develop".type = "github";
  inputs."simpleAST-develop".owner = "riinr";
  inputs."simpleAST-develop".repo = "flake-nimble";
  inputs."simpleAST-develop".ref = "flake-pinning";
  inputs."simpleAST-develop".dir = "nimpkgs/s/simpleAST/develop";

    inputs."simpleAST-master".type = "github";
  inputs."simpleAST-master".owner = "riinr";
  inputs."simpleAST-master".repo = "flake-nimble";
  inputs."simpleAST-master".ref = "flake-pinning";
  inputs."simpleAST-master".dir = "nimpkgs/s/simpleAST/master";

    inputs."simpleAST-0_0_0".type = "github";
  inputs."simpleAST-0_0_0".owner = "riinr";
  inputs."simpleAST-0_0_0".repo = "flake-nimble";
  inputs."simpleAST-0_0_0".ref = "flake-pinning";
  inputs."simpleAST-0_0_0".dir = "nimpkgs/s/simpleAST/0_0_0";

    inputs."simpleAST-0_1_0".type = "github";
  inputs."simpleAST-0_1_0".owner = "riinr";
  inputs."simpleAST-0_1_0".repo = "flake-nimble";
  inputs."simpleAST-0_1_0".ref = "flake-pinning";
  inputs."simpleAST-0_1_0".dir = "nimpkgs/s/simpleAST/0_1_0";

    inputs."simpleAST-1_1_0".type = "github";
  inputs."simpleAST-1_1_0".owner = "riinr";
  inputs."simpleAST-1_1_0".repo = "flake-nimble";
  inputs."simpleAST-1_1_0".ref = "flake-pinning";
  inputs."simpleAST-1_1_0".dir = "nimpkgs/s/simpleAST/1_1_0";

    inputs."simpleAST-1_1_1".type = "github";
  inputs."simpleAST-1_1_1".owner = "riinr";
  inputs."simpleAST-1_1_1".repo = "flake-nimble";
  inputs."simpleAST-1_1_1".ref = "flake-pinning";
  inputs."simpleAST-1_1_1".dir = "nimpkgs/s/simpleAST/1_1_1";

    inputs."simpleAST-1_1_2".type = "github";
  inputs."simpleAST-1_1_2".owner = "riinr";
  inputs."simpleAST-1_1_2".repo = "flake-nimble";
  inputs."simpleAST-1_1_2".ref = "flake-pinning";
  inputs."simpleAST-1_1_2".dir = "nimpkgs/s/simpleAST/1_1_2";

    inputs."simpleAST-1_1_3".type = "github";
  inputs."simpleAST-1_1_3".owner = "riinr";
  inputs."simpleAST-1_1_3".repo = "flake-nimble";
  inputs."simpleAST-1_1_3".ref = "flake-pinning";
  inputs."simpleAST-1_1_3".dir = "nimpkgs/s/simpleAST/1_1_3";

    inputs."simpleAST-1_1_4".type = "github";
  inputs."simpleAST-1_1_4".owner = "riinr";
  inputs."simpleAST-1_1_4".repo = "flake-nimble";
  inputs."simpleAST-1_1_4".ref = "flake-pinning";
  inputs."simpleAST-1_1_4".dir = "nimpkgs/s/simpleAST/1_1_4";

    inputs."simpleAST-1_1_5".type = "github";
  inputs."simpleAST-1_1_5".owner = "riinr";
  inputs."simpleAST-1_1_5".repo = "flake-nimble";
  inputs."simpleAST-1_1_5".ref = "flake-pinning";
  inputs."simpleAST-1_1_5".dir = "nimpkgs/s/simpleAST/1_1_5";

    inputs."simpleAST-1_1_6".type = "github";
  inputs."simpleAST-1_1_6".owner = "riinr";
  inputs."simpleAST-1_1_6".repo = "flake-nimble";
  inputs."simpleAST-1_1_6".ref = "flake-pinning";
  inputs."simpleAST-1_1_6".dir = "nimpkgs/s/simpleAST/1_1_6";

    inputs."simpleAST-1_2_0".type = "github";
  inputs."simpleAST-1_2_0".owner = "riinr";
  inputs."simpleAST-1_2_0".repo = "flake-nimble";
  inputs."simpleAST-1_2_0".ref = "flake-pinning";
  inputs."simpleAST-1_2_0".dir = "nimpkgs/s/simpleAST/1_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}