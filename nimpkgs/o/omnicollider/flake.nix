{
  description = ''SuperCollider wrapper for omni.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."omnicollider-develop".type = "github";
  inputs."omnicollider-develop".owner = "riinr";
  inputs."omnicollider-develop".repo = "flake-nimble";
  inputs."omnicollider-develop".ref = "flake-pinning";
  inputs."omnicollider-develop".dir = "nimpkgs/o/omnicollider/develop";

    inputs."omnicollider-master".type = "github";
  inputs."omnicollider-master".owner = "riinr";
  inputs."omnicollider-master".repo = "flake-nimble";
  inputs."omnicollider-master".ref = "flake-pinning";
  inputs."omnicollider-master".dir = "nimpkgs/o/omnicollider/master";

    inputs."omnicollider-0_1_0".type = "github";
  inputs."omnicollider-0_1_0".owner = "riinr";
  inputs."omnicollider-0_1_0".repo = "flake-nimble";
  inputs."omnicollider-0_1_0".ref = "flake-pinning";
  inputs."omnicollider-0_1_0".dir = "nimpkgs/o/omnicollider/0_1_0";

    inputs."omnicollider-0_2_0".type = "github";
  inputs."omnicollider-0_2_0".owner = "riinr";
  inputs."omnicollider-0_2_0".repo = "flake-nimble";
  inputs."omnicollider-0_2_0".ref = "flake-pinning";
  inputs."omnicollider-0_2_0".dir = "nimpkgs/o/omnicollider/0_2_0";

    inputs."omnicollider-0_2_1".type = "github";
  inputs."omnicollider-0_2_1".owner = "riinr";
  inputs."omnicollider-0_2_1".repo = "flake-nimble";
  inputs."omnicollider-0_2_1".ref = "flake-pinning";
  inputs."omnicollider-0_2_1".dir = "nimpkgs/o/omnicollider/0_2_1";

    inputs."omnicollider-0_2_2".type = "github";
  inputs."omnicollider-0_2_2".owner = "riinr";
  inputs."omnicollider-0_2_2".repo = "flake-nimble";
  inputs."omnicollider-0_2_2".ref = "flake-pinning";
  inputs."omnicollider-0_2_2".dir = "nimpkgs/o/omnicollider/0_2_2";

    inputs."omnicollider-0_2_3".type = "github";
  inputs."omnicollider-0_2_3".owner = "riinr";
  inputs."omnicollider-0_2_3".repo = "flake-nimble";
  inputs."omnicollider-0_2_3".ref = "flake-pinning";
  inputs."omnicollider-0_2_3".dir = "nimpkgs/o/omnicollider/0_2_3";

    inputs."omnicollider-0_4_0".type = "github";
  inputs."omnicollider-0_4_0".owner = "riinr";
  inputs."omnicollider-0_4_0".repo = "flake-nimble";
  inputs."omnicollider-0_4_0".ref = "flake-pinning";
  inputs."omnicollider-0_4_0".dir = "nimpkgs/o/omnicollider/0_4_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}