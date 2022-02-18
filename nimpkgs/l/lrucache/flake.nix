{
  description = ''Least recently used (LRU) cache'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."lrucache-master".type = "github";
  inputs."lrucache-master".owner = "riinr";
  inputs."lrucache-master".repo = "flake-nimble";
  inputs."lrucache-master".ref = "flake-pinning";
  inputs."lrucache-master".dir = "nimpkgs/l/lrucache/master";

    inputs."lrucache-1_0_0".type = "github";
  inputs."lrucache-1_0_0".owner = "riinr";
  inputs."lrucache-1_0_0".repo = "flake-nimble";
  inputs."lrucache-1_0_0".ref = "flake-pinning";
  inputs."lrucache-1_0_0".dir = "nimpkgs/l/lrucache/1_0_0";

    inputs."lrucache-1_0_1".type = "github";
  inputs."lrucache-1_0_1".owner = "riinr";
  inputs."lrucache-1_0_1".repo = "flake-nimble";
  inputs."lrucache-1_0_1".ref = "flake-pinning";
  inputs."lrucache-1_0_1".dir = "nimpkgs/l/lrucache/1_0_1";

    inputs."lrucache-1_0_2".type = "github";
  inputs."lrucache-1_0_2".owner = "riinr";
  inputs."lrucache-1_0_2".repo = "flake-nimble";
  inputs."lrucache-1_0_2".ref = "flake-pinning";
  inputs."lrucache-1_0_2".dir = "nimpkgs/l/lrucache/1_0_2";

    inputs."lrucache-1_0_3".type = "github";
  inputs."lrucache-1_0_3".owner = "riinr";
  inputs."lrucache-1_0_3".repo = "flake-nimble";
  inputs."lrucache-1_0_3".ref = "flake-pinning";
  inputs."lrucache-1_0_3".dir = "nimpkgs/l/lrucache/1_0_3";

    inputs."lrucache-1_0_4".type = "github";
  inputs."lrucache-1_0_4".owner = "riinr";
  inputs."lrucache-1_0_4".repo = "flake-nimble";
  inputs."lrucache-1_0_4".ref = "flake-pinning";
  inputs."lrucache-1_0_4".dir = "nimpkgs/l/lrucache/1_0_4";

    inputs."lrucache-1_1_0".type = "github";
  inputs."lrucache-1_1_0".owner = "riinr";
  inputs."lrucache-1_1_0".repo = "flake-nimble";
  inputs."lrucache-1_1_0".ref = "flake-pinning";
  inputs."lrucache-1_1_0".dir = "nimpkgs/l/lrucache/1_1_0";

    inputs."lrucache-1_1_1".type = "github";
  inputs."lrucache-1_1_1".owner = "riinr";
  inputs."lrucache-1_1_1".repo = "flake-nimble";
  inputs."lrucache-1_1_1".ref = "flake-pinning";
  inputs."lrucache-1_1_1".dir = "nimpkgs/l/lrucache/1_1_1";

    inputs."lrucache-1_1_2".type = "github";
  inputs."lrucache-1_1_2".owner = "riinr";
  inputs."lrucache-1_1_2".repo = "flake-nimble";
  inputs."lrucache-1_1_2".ref = "flake-pinning";
  inputs."lrucache-1_1_2".dir = "nimpkgs/l/lrucache/1_1_2";

    inputs."lrucache-1_1_3".type = "github";
  inputs."lrucache-1_1_3".owner = "riinr";
  inputs."lrucache-1_1_3".repo = "flake-nimble";
  inputs."lrucache-1_1_3".ref = "flake-pinning";
  inputs."lrucache-1_1_3".dir = "nimpkgs/l/lrucache/1_1_3";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}