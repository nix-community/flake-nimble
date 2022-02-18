{
  description = ''Simple library to draw stuff on a window'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."drawim-master".type = "github";
  inputs."drawim-master".owner = "riinr";
  inputs."drawim-master".repo = "flake-nimble";
  inputs."drawim-master".ref = "flake-pinning";
  inputs."drawim-master".dir = "nimpkgs/d/drawim/master";

    inputs."drawim-0_1_0".type = "github";
  inputs."drawim-0_1_0".owner = "riinr";
  inputs."drawim-0_1_0".repo = "flake-nimble";
  inputs."drawim-0_1_0".ref = "flake-pinning";
  inputs."drawim-0_1_0".dir = "nimpkgs/d/drawim/0_1_0";

    inputs."drawim-0_1_1".type = "github";
  inputs."drawim-0_1_1".owner = "riinr";
  inputs."drawim-0_1_1".repo = "flake-nimble";
  inputs."drawim-0_1_1".ref = "flake-pinning";
  inputs."drawim-0_1_1".dir = "nimpkgs/d/drawim/0_1_1";

    inputs."drawim-0_1_2".type = "github";
  inputs."drawim-0_1_2".owner = "riinr";
  inputs."drawim-0_1_2".repo = "flake-nimble";
  inputs."drawim-0_1_2".ref = "flake-pinning";
  inputs."drawim-0_1_2".dir = "nimpkgs/d/drawim/0_1_2";

    inputs."drawim-0_1_3".type = "github";
  inputs."drawim-0_1_3".owner = "riinr";
  inputs."drawim-0_1_3".repo = "flake-nimble";
  inputs."drawim-0_1_3".ref = "flake-pinning";
  inputs."drawim-0_1_3".dir = "nimpkgs/d/drawim/0_1_3";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}