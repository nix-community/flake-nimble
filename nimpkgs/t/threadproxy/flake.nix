{
  description = ''Simplify Nim Inter-Thread Communication'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."threadproxy-master".type = "github";
  inputs."threadproxy-master".owner = "riinr";
  inputs."threadproxy-master".repo = "flake-nimble";
  inputs."threadproxy-master".ref = "flake-pinning";
  inputs."threadproxy-master".dir = "nimpkgs/t/threadproxy/master";

    inputs."threadproxy-0_0_1".type = "github";
  inputs."threadproxy-0_0_1".owner = "riinr";
  inputs."threadproxy-0_0_1".repo = "flake-nimble";
  inputs."threadproxy-0_0_1".ref = "flake-pinning";
  inputs."threadproxy-0_0_1".dir = "nimpkgs/t/threadproxy/0_0_1";

    inputs."threadproxy-0_0_2".type = "github";
  inputs."threadproxy-0_0_2".owner = "riinr";
  inputs."threadproxy-0_0_2".repo = "flake-nimble";
  inputs."threadproxy-0_0_2".ref = "flake-pinning";
  inputs."threadproxy-0_0_2".dir = "nimpkgs/t/threadproxy/0_0_2";

    inputs."threadproxy-0_1_0".type = "github";
  inputs."threadproxy-0_1_0".owner = "riinr";
  inputs."threadproxy-0_1_0".repo = "flake-nimble";
  inputs."threadproxy-0_1_0".ref = "flake-pinning";
  inputs."threadproxy-0_1_0".dir = "nimpkgs/t/threadproxy/0_1_0";

    inputs."threadproxy-0_1_1".type = "github";
  inputs."threadproxy-0_1_1".owner = "riinr";
  inputs."threadproxy-0_1_1".repo = "flake-nimble";
  inputs."threadproxy-0_1_1".ref = "flake-pinning";
  inputs."threadproxy-0_1_1".dir = "nimpkgs/t/threadproxy/0_1_1";

    inputs."threadproxy-0_1_2".type = "github";
  inputs."threadproxy-0_1_2".owner = "riinr";
  inputs."threadproxy-0_1_2".repo = "flake-nimble";
  inputs."threadproxy-0_1_2".ref = "flake-pinning";
  inputs."threadproxy-0_1_2".dir = "nimpkgs/t/threadproxy/0_1_2";

    inputs."threadproxy-0_1_3".type = "github";
  inputs."threadproxy-0_1_3".owner = "riinr";
  inputs."threadproxy-0_1_3".repo = "flake-nimble";
  inputs."threadproxy-0_1_3".ref = "flake-pinning";
  inputs."threadproxy-0_1_3".dir = "nimpkgs/t/threadproxy/0_1_3";

    inputs."threadproxy-0_2_0".type = "github";
  inputs."threadproxy-0_2_0".owner = "riinr";
  inputs."threadproxy-0_2_0".repo = "flake-nimble";
  inputs."threadproxy-0_2_0".ref = "flake-pinning";
  inputs."threadproxy-0_2_0".dir = "nimpkgs/t/threadproxy/0_2_0";

    inputs."threadproxy-0_2_1".type = "github";
  inputs."threadproxy-0_2_1".owner = "riinr";
  inputs."threadproxy-0_2_1".repo = "flake-nimble";
  inputs."threadproxy-0_2_1".ref = "flake-pinning";
  inputs."threadproxy-0_2_1".dir = "nimpkgs/t/threadproxy/0_2_1";

    inputs."threadproxy-0_2_2".type = "github";
  inputs."threadproxy-0_2_2".owner = "riinr";
  inputs."threadproxy-0_2_2".repo = "flake-nimble";
  inputs."threadproxy-0_2_2".ref = "flake-pinning";
  inputs."threadproxy-0_2_2".dir = "nimpkgs/t/threadproxy/0_2_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}