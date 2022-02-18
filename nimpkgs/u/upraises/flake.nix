{
  description = ''exception tracking for older versions of nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."upraises-main".type = "github";
  inputs."upraises-main".owner = "riinr";
  inputs."upraises-main".repo = "flake-nimble";
  inputs."upraises-main".ref = "flake-pinning";
  inputs."upraises-main".dir = "nimpkgs/u/upraises/main";

    inputs."upraises-0_1_0".type = "github";
  inputs."upraises-0_1_0".owner = "riinr";
  inputs."upraises-0_1_0".repo = "flake-nimble";
  inputs."upraises-0_1_0".ref = "flake-pinning";
  inputs."upraises-0_1_0".dir = "nimpkgs/u/upraises/0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}