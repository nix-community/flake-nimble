{
  description = ''Generated Nim's API docs in markdown for github's README.md files. Great for small libraries with simple APIs.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."mddoc-master".type = "github";
  inputs."mddoc-master".owner = "riinr";
  inputs."mddoc-master".repo = "flake-nimble";
  inputs."mddoc-master".ref = "flake-pinning";
  inputs."mddoc-master".dir = "nimpkgs/m/mddoc/master";

    inputs."mddoc-0_0_1".type = "github";
  inputs."mddoc-0_0_1".owner = "riinr";
  inputs."mddoc-0_0_1".repo = "flake-nimble";
  inputs."mddoc-0_0_1".ref = "flake-pinning";
  inputs."mddoc-0_0_1".dir = "nimpkgs/m/mddoc/0_0_1";

    inputs."mddoc-0_0_2".type = "github";
  inputs."mddoc-0_0_2".owner = "riinr";
  inputs."mddoc-0_0_2".repo = "flake-nimble";
  inputs."mddoc-0_0_2".ref = "flake-pinning";
  inputs."mddoc-0_0_2".dir = "nimpkgs/m/mddoc/0_0_2";

    inputs."mddoc-0_0_3".type = "github";
  inputs."mddoc-0_0_3".owner = "riinr";
  inputs."mddoc-0_0_3".repo = "flake-nimble";
  inputs."mddoc-0_0_3".ref = "flake-pinning";
  inputs."mddoc-0_0_3".dir = "nimpkgs/m/mddoc/0_0_3";

    inputs."mddoc-0_0_4".type = "github";
  inputs."mddoc-0_0_4".owner = "riinr";
  inputs."mddoc-0_0_4".repo = "flake-nimble";
  inputs."mddoc-0_0_4".ref = "flake-pinning";
  inputs."mddoc-0_0_4".dir = "nimpkgs/m/mddoc/0_0_4";

    inputs."mddoc-v0_0_4".type = "github";
  inputs."mddoc-v0_0_4".owner = "riinr";
  inputs."mddoc-v0_0_4".repo = "flake-nimble";
  inputs."mddoc-v0_0_4".ref = "flake-pinning";
  inputs."mddoc-v0_0_4".dir = "nimpkgs/m/mddoc/v0_0_4";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}