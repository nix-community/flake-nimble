{
  description = ''A highlighter for diff -u-like output & port of Python difflib'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."hldiff-master".type = "github";
  inputs."hldiff-master".owner = "riinr";
  inputs."hldiff-master".repo = "flake-nimble";
  inputs."hldiff-master".ref = "flake-pinning";
  inputs."hldiff-master".dir = "nimpkgs/h/hldiff/master";

    inputs."hldiff-v0_1".type = "github";
  inputs."hldiff-v0_1".owner = "riinr";
  inputs."hldiff-v0_1".repo = "flake-nimble";
  inputs."hldiff-v0_1".ref = "flake-pinning";
  inputs."hldiff-v0_1".dir = "nimpkgs/h/hldiff/v0_1";

    inputs."hldiff-v0_2".type = "github";
  inputs."hldiff-v0_2".owner = "riinr";
  inputs."hldiff-v0_2".repo = "flake-nimble";
  inputs."hldiff-v0_2".ref = "flake-pinning";
  inputs."hldiff-v0_2".dir = "nimpkgs/h/hldiff/v0_2";

    inputs."hldiff-v0_3".type = "github";
  inputs."hldiff-v0_3".owner = "riinr";
  inputs."hldiff-v0_3".repo = "flake-nimble";
  inputs."hldiff-v0_3".ref = "flake-pinning";
  inputs."hldiff-v0_3".dir = "nimpkgs/h/hldiff/v0_3";

    inputs."hldiff-v0_4".type = "github";
  inputs."hldiff-v0_4".owner = "riinr";
  inputs."hldiff-v0_4".repo = "flake-nimble";
  inputs."hldiff-v0_4".ref = "flake-pinning";
  inputs."hldiff-v0_4".dir = "nimpkgs/h/hldiff/v0_4";

    inputs."hldiff-v0_5".type = "github";
  inputs."hldiff-v0_5".owner = "riinr";
  inputs."hldiff-v0_5".repo = "flake-nimble";
  inputs."hldiff-v0_5".ref = "flake-pinning";
  inputs."hldiff-v0_5".dir = "nimpkgs/h/hldiff/v0_5";

    inputs."hldiff-v0_6".type = "github";
  inputs."hldiff-v0_6".owner = "riinr";
  inputs."hldiff-v0_6".repo = "flake-nimble";
  inputs."hldiff-v0_6".ref = "flake-pinning";
  inputs."hldiff-v0_6".dir = "nimpkgs/h/hldiff/v0_6";

    inputs."hldiff-v0_7".type = "github";
  inputs."hldiff-v0_7".owner = "riinr";
  inputs."hldiff-v0_7".repo = "flake-nimble";
  inputs."hldiff-v0_7".ref = "flake-pinning";
  inputs."hldiff-v0_7".dir = "nimpkgs/h/hldiff/v0_7";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}