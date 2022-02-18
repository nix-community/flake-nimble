{
  description = ''Shell command manager'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."oblivion-main".type = "github";
  inputs."oblivion-main".owner = "riinr";
  inputs."oblivion-main".repo = "flake-nimble";
  inputs."oblivion-main".ref = "flake-pinning";
  inputs."oblivion-main".dir = "nimpkgs/o/oblivion/main";

    inputs."oblivion-v0_1_0".type = "github";
  inputs."oblivion-v0_1_0".owner = "riinr";
  inputs."oblivion-v0_1_0".repo = "flake-nimble";
  inputs."oblivion-v0_1_0".ref = "flake-pinning";
  inputs."oblivion-v0_1_0".dir = "nimpkgs/o/oblivion/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}