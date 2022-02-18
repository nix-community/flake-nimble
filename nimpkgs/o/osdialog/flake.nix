{
  description = ''Nim wrapper for the osdialog library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."osdialog-master".type = "github";
  inputs."osdialog-master".owner = "riinr";
  inputs."osdialog-master".repo = "flake-nimble";
  inputs."osdialog-master".ref = "flake-pinning";
  inputs."osdialog-master".dir = "nimpkgs/o/osdialog/master";

    inputs."osdialog-v0_1_0".type = "github";
  inputs."osdialog-v0_1_0".owner = "riinr";
  inputs."osdialog-v0_1_0".repo = "flake-nimble";
  inputs."osdialog-v0_1_0".ref = "flake-pinning";
  inputs."osdialog-v0_1_0".dir = "nimpkgs/o/osdialog/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}