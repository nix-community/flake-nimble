{
  description = ''EDN and Clojure parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."edn-master".type = "github";
  inputs."edn-master".owner = "riinr";
  inputs."edn-master".repo = "flake-nimble";
  inputs."edn-master".ref = "flake-pinning";
  inputs."edn-master".dir = "nimpkgs/e/edn/master";

    inputs."edn-0_1_0".type = "github";
  inputs."edn-0_1_0".owner = "riinr";
  inputs."edn-0_1_0".repo = "flake-nimble";
  inputs."edn-0_1_0".ref = "flake-pinning";
  inputs."edn-0_1_0".dir = "nimpkgs/e/edn/0_1_0";

    inputs."edn-0_1_1".type = "github";
  inputs."edn-0_1_1".owner = "riinr";
  inputs."edn-0_1_1".repo = "flake-nimble";
  inputs."edn-0_1_1".ref = "flake-pinning";
  inputs."edn-0_1_1".dir = "nimpkgs/e/edn/0_1_1";

    inputs."edn-0_2_0".type = "github";
  inputs."edn-0_2_0".owner = "riinr";
  inputs."edn-0_2_0".repo = "flake-nimble";
  inputs."edn-0_2_0".ref = "flake-pinning";
  inputs."edn-0_2_0".dir = "nimpkgs/e/edn/0_2_0";

    inputs."edn-0_2_1".type = "github";
  inputs."edn-0_2_1".owner = "riinr";
  inputs."edn-0_2_1".repo = "flake-nimble";
  inputs."edn-0_2_1".ref = "flake-pinning";
  inputs."edn-0_2_1".dir = "nimpkgs/e/edn/0_2_1";

    inputs."edn-0_2_2".type = "github";
  inputs."edn-0_2_2".owner = "riinr";
  inputs."edn-0_2_2".repo = "flake-nimble";
  inputs."edn-0_2_2".ref = "flake-pinning";
  inputs."edn-0_2_2".dir = "nimpkgs/e/edn/0_2_2";

    inputs."edn-0_2_3".type = "github";
  inputs."edn-0_2_3".owner = "riinr";
  inputs."edn-0_2_3".repo = "flake-nimble";
  inputs."edn-0_2_3".ref = "flake-pinning";
  inputs."edn-0_2_3".dir = "nimpkgs/e/edn/0_2_3";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}