{
  description = ''Nim wrappers for tree-sitter parser grammars'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."htsparse-master".type = "github";
  inputs."htsparse-master".owner = "riinr";
  inputs."htsparse-master".repo = "flake-nimble";
  inputs."htsparse-master".ref = "flake-pinning";
  inputs."htsparse-master".dir = "nimpkgs/h/htsparse/master";

    inputs."htsparse-0_1_1".type = "github";
  inputs."htsparse-0_1_1".owner = "riinr";
  inputs."htsparse-0_1_1".repo = "flake-nimble";
  inputs."htsparse-0_1_1".ref = "flake-pinning";
  inputs."htsparse-0_1_1".dir = "nimpkgs/h/htsparse/0_1_1";

    inputs."htsparse-0_1_10".type = "github";
  inputs."htsparse-0_1_10".owner = "riinr";
  inputs."htsparse-0_1_10".repo = "flake-nimble";
  inputs."htsparse-0_1_10".ref = "flake-pinning";
  inputs."htsparse-0_1_10".dir = "nimpkgs/h/htsparse/0_1_10";

    inputs."htsparse-0_1_11".type = "github";
  inputs."htsparse-0_1_11".owner = "riinr";
  inputs."htsparse-0_1_11".repo = "flake-nimble";
  inputs."htsparse-0_1_11".ref = "flake-pinning";
  inputs."htsparse-0_1_11".dir = "nimpkgs/h/htsparse/0_1_11";

    inputs."htsparse-0_1_12".type = "github";
  inputs."htsparse-0_1_12".owner = "riinr";
  inputs."htsparse-0_1_12".repo = "flake-nimble";
  inputs."htsparse-0_1_12".ref = "flake-pinning";
  inputs."htsparse-0_1_12".dir = "nimpkgs/h/htsparse/0_1_12";

    inputs."htsparse-0_1_13".type = "github";
  inputs."htsparse-0_1_13".owner = "riinr";
  inputs."htsparse-0_1_13".repo = "flake-nimble";
  inputs."htsparse-0_1_13".ref = "flake-pinning";
  inputs."htsparse-0_1_13".dir = "nimpkgs/h/htsparse/0_1_13";

    inputs."htsparse-0_1_14".type = "github";
  inputs."htsparse-0_1_14".owner = "riinr";
  inputs."htsparse-0_1_14".repo = "flake-nimble";
  inputs."htsparse-0_1_14".ref = "flake-pinning";
  inputs."htsparse-0_1_14".dir = "nimpkgs/h/htsparse/0_1_14";

    inputs."htsparse-0_1_2".type = "github";
  inputs."htsparse-0_1_2".owner = "riinr";
  inputs."htsparse-0_1_2".repo = "flake-nimble";
  inputs."htsparse-0_1_2".ref = "flake-pinning";
  inputs."htsparse-0_1_2".dir = "nimpkgs/h/htsparse/0_1_2";

    inputs."htsparse-0_1_3".type = "github";
  inputs."htsparse-0_1_3".owner = "riinr";
  inputs."htsparse-0_1_3".repo = "flake-nimble";
  inputs."htsparse-0_1_3".ref = "flake-pinning";
  inputs."htsparse-0_1_3".dir = "nimpkgs/h/htsparse/0_1_3";

    inputs."htsparse-0_1_4".type = "github";
  inputs."htsparse-0_1_4".owner = "riinr";
  inputs."htsparse-0_1_4".repo = "flake-nimble";
  inputs."htsparse-0_1_4".ref = "flake-pinning";
  inputs."htsparse-0_1_4".dir = "nimpkgs/h/htsparse/0_1_4";

    inputs."htsparse-0_1_5".type = "github";
  inputs."htsparse-0_1_5".owner = "riinr";
  inputs."htsparse-0_1_5".repo = "flake-nimble";
  inputs."htsparse-0_1_5".ref = "flake-pinning";
  inputs."htsparse-0_1_5".dir = "nimpkgs/h/htsparse/0_1_5";

    inputs."htsparse-0_1_6".type = "github";
  inputs."htsparse-0_1_6".owner = "riinr";
  inputs."htsparse-0_1_6".repo = "flake-nimble";
  inputs."htsparse-0_1_6".ref = "flake-pinning";
  inputs."htsparse-0_1_6".dir = "nimpkgs/h/htsparse/0_1_6";

    inputs."htsparse-0_1_7".type = "github";
  inputs."htsparse-0_1_7".owner = "riinr";
  inputs."htsparse-0_1_7".repo = "flake-nimble";
  inputs."htsparse-0_1_7".ref = "flake-pinning";
  inputs."htsparse-0_1_7".dir = "nimpkgs/h/htsparse/0_1_7";

    inputs."htsparse-0_1_8".type = "github";
  inputs."htsparse-0_1_8".owner = "riinr";
  inputs."htsparse-0_1_8".repo = "flake-nimble";
  inputs."htsparse-0_1_8".ref = "flake-pinning";
  inputs."htsparse-0_1_8".dir = "nimpkgs/h/htsparse/0_1_8";

    inputs."htsparse-0_1_9".type = "github";
  inputs."htsparse-0_1_9".owner = "riinr";
  inputs."htsparse-0_1_9".repo = "flake-nimble";
  inputs."htsparse-0_1_9".ref = "flake-pinning";
  inputs."htsparse-0_1_9".dir = "nimpkgs/h/htsparse/0_1_9";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}