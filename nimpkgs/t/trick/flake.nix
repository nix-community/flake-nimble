{
  description = ''Game Boy Advance image conversion library and more'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."trick-master".type = "github";
  inputs."trick-master".owner = "riinr";
  inputs."trick-master".repo = "flake-nimble";
  inputs."trick-master".ref = "flake-pinning";
  inputs."trick-master".dir = "nimpkgs/t/trick/master";

    inputs."trick-0_1_1".type = "github";
  inputs."trick-0_1_1".owner = "riinr";
  inputs."trick-0_1_1".repo = "flake-nimble";
  inputs."trick-0_1_1".ref = "flake-pinning";
  inputs."trick-0_1_1".dir = "nimpkgs/t/trick/0_1_1";

    inputs."trick-0_1_2".type = "github";
  inputs."trick-0_1_2".owner = "riinr";
  inputs."trick-0_1_2".repo = "flake-nimble";
  inputs."trick-0_1_2".ref = "flake-pinning";
  inputs."trick-0_1_2".dir = "nimpkgs/t/trick/0_1_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}