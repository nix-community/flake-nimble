{
  description = ''Microsoft Azure Cloud Computing Platform and Services (MAC) APIs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."bluu-master".type = "github";
  inputs."bluu-master".owner = "riinr";
  inputs."bluu-master".repo = "flake-nimble";
  inputs."bluu-master".ref = "flake-pinning";
  inputs."bluu-master".dir = "nimpkgs/b/bluu/master";

    inputs."bluu-0_0_1".type = "github";
  inputs."bluu-0_0_1".owner = "riinr";
  inputs."bluu-0_0_1".repo = "flake-nimble";
  inputs."bluu-0_0_1".ref = "flake-pinning";
  inputs."bluu-0_0_1".dir = "nimpkgs/b/bluu/0_0_1";

    inputs."bluu-0_0_2".type = "github";
  inputs."bluu-0_0_2".owner = "riinr";
  inputs."bluu-0_0_2".repo = "flake-nimble";
  inputs."bluu-0_0_2".ref = "flake-pinning";
  inputs."bluu-0_0_2".dir = "nimpkgs/b/bluu/0_0_2";

    inputs."bluu-0_0_3".type = "github";
  inputs."bluu-0_0_3".owner = "riinr";
  inputs."bluu-0_0_3".repo = "flake-nimble";
  inputs."bluu-0_0_3".ref = "flake-pinning";
  inputs."bluu-0_0_3".dir = "nimpkgs/b/bluu/0_0_3";

    inputs."bluu-0_0_4".type = "github";
  inputs."bluu-0_0_4".owner = "riinr";
  inputs."bluu-0_0_4".repo = "flake-nimble";
  inputs."bluu-0_0_4".ref = "flake-pinning";
  inputs."bluu-0_0_4".dir = "nimpkgs/b/bluu/0_0_4";

    inputs."bluu-0_0_5".type = "github";
  inputs."bluu-0_0_5".owner = "riinr";
  inputs."bluu-0_0_5".repo = "flake-nimble";
  inputs."bluu-0_0_5".ref = "flake-pinning";
  inputs."bluu-0_0_5".dir = "nimpkgs/b/bluu/0_0_5";

    inputs."bluu-0_0_6".type = "github";
  inputs."bluu-0_0_6".owner = "riinr";
  inputs."bluu-0_0_6".repo = "flake-nimble";
  inputs."bluu-0_0_6".ref = "flake-pinning";
  inputs."bluu-0_0_6".dir = "nimpkgs/b/bluu/0_0_6";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}