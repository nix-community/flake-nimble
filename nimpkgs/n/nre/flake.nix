{
  description = ''A better regular expression library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nre-master".type = "github";
  inputs."nre-master".owner = "riinr";
  inputs."nre-master".repo = "flake-nimble";
  inputs."nre-master".ref = "flake-pinning";
  inputs."nre-master".dir = "nimpkgs/n/nre/master";

    inputs."nre-0_1_0".type = "github";
  inputs."nre-0_1_0".owner = "riinr";
  inputs."nre-0_1_0".repo = "flake-nimble";
  inputs."nre-0_1_0".ref = "flake-pinning";
  inputs."nre-0_1_0".dir = "nimpkgs/n/nre/0_1_0";

    inputs."nre-0_2_0".type = "github";
  inputs."nre-0_2_0".owner = "riinr";
  inputs."nre-0_2_0".repo = "flake-nimble";
  inputs."nre-0_2_0".ref = "flake-pinning";
  inputs."nre-0_2_0".dir = "nimpkgs/n/nre/0_2_0";

    inputs."nre-0_3_0".type = "github";
  inputs."nre-0_3_0".owner = "riinr";
  inputs."nre-0_3_0".repo = "flake-nimble";
  inputs."nre-0_3_0".ref = "flake-pinning";
  inputs."nre-0_3_0".dir = "nimpkgs/n/nre/0_3_0";

    inputs."nre-0_3_1".type = "github";
  inputs."nre-0_3_1".owner = "riinr";
  inputs."nre-0_3_1".repo = "flake-nimble";
  inputs."nre-0_3_1".ref = "flake-pinning";
  inputs."nre-0_3_1".dir = "nimpkgs/n/nre/0_3_1";

    inputs."nre-0_4_0".type = "github";
  inputs."nre-0_4_0".owner = "riinr";
  inputs."nre-0_4_0".repo = "flake-nimble";
  inputs."nre-0_4_0".ref = "flake-pinning";
  inputs."nre-0_4_0".dir = "nimpkgs/n/nre/0_4_0";

    inputs."nre-0_5_0".type = "github";
  inputs."nre-0_5_0".owner = "riinr";
  inputs."nre-0_5_0".repo = "flake-nimble";
  inputs."nre-0_5_0".ref = "flake-pinning";
  inputs."nre-0_5_0".dir = "nimpkgs/n/nre/0_5_0";

    inputs."nre-0_6_0".type = "github";
  inputs."nre-0_6_0".owner = "riinr";
  inputs."nre-0_6_0".repo = "flake-nimble";
  inputs."nre-0_6_0".ref = "flake-pinning";
  inputs."nre-0_6_0".dir = "nimpkgs/n/nre/0_6_0";

    inputs."nre-0_6_1".type = "github";
  inputs."nre-0_6_1".owner = "riinr";
  inputs."nre-0_6_1".repo = "flake-nimble";
  inputs."nre-0_6_1".ref = "flake-pinning";
  inputs."nre-0_6_1".dir = "nimpkgs/n/nre/0_6_1";

    inputs."nre-1_0_0".type = "github";
  inputs."nre-1_0_0".owner = "riinr";
  inputs."nre-1_0_0".repo = "flake-nimble";
  inputs."nre-1_0_0".ref = "flake-pinning";
  inputs."nre-1_0_0".dir = "nimpkgs/n/nre/1_0_0";

    inputs."nre-2_0_0".type = "github";
  inputs."nre-2_0_0".owner = "riinr";
  inputs."nre-2_0_0".repo = "flake-nimble";
  inputs."nre-2_0_0".ref = "flake-pinning";
  inputs."nre-2_0_0".dir = "nimpkgs/n/nre/2_0_0";

    inputs."nre-2_0_1".type = "github";
  inputs."nre-2_0_1".owner = "riinr";
  inputs."nre-2_0_1".repo = "flake-nimble";
  inputs."nre-2_0_1".ref = "flake-pinning";
  inputs."nre-2_0_1".dir = "nimpkgs/n/nre/2_0_1";

    inputs."nre-2_0_2".type = "github";
  inputs."nre-2_0_2".owner = "riinr";
  inputs."nre-2_0_2".repo = "flake-nimble";
  inputs."nre-2_0_2".ref = "flake-pinning";
  inputs."nre-2_0_2".dir = "nimpkgs/n/nre/2_0_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}