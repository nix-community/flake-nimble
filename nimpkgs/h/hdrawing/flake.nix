{
  description = ''Simple shape drawing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."hdrawing-master".type = "github";
  inputs."hdrawing-master".owner = "riinr";
  inputs."hdrawing-master".repo = "flake-nimble";
  inputs."hdrawing-master".ref = "flake-pinning";
  inputs."hdrawing-master".dir = "nimpkgs/h/hdrawing/master";

    inputs."hdrawing-0_1_1".type = "github";
  inputs."hdrawing-0_1_1".owner = "riinr";
  inputs."hdrawing-0_1_1".repo = "flake-nimble";
  inputs."hdrawing-0_1_1".ref = "flake-pinning";
  inputs."hdrawing-0_1_1".dir = "nimpkgs/h/hdrawing/0_1_1";

    inputs."hdrawing-0_1_2".type = "github";
  inputs."hdrawing-0_1_2".owner = "riinr";
  inputs."hdrawing-0_1_2".repo = "flake-nimble";
  inputs."hdrawing-0_1_2".ref = "flake-pinning";
  inputs."hdrawing-0_1_2".dir = "nimpkgs/h/hdrawing/0_1_2";

    inputs."hdrawing-0_1_3".type = "github";
  inputs."hdrawing-0_1_3".owner = "riinr";
  inputs."hdrawing-0_1_3".repo = "flake-nimble";
  inputs."hdrawing-0_1_3".ref = "flake-pinning";
  inputs."hdrawing-0_1_3".dir = "nimpkgs/h/hdrawing/0_1_3";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}