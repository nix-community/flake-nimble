{
  description = ''Web-based playground for testing Nim code.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."playground-master".type = "github";
  inputs."playground-master".owner = "riinr";
  inputs."playground-master".repo = "flake-nimble";
  inputs."playground-master".ref = "flake-pinning";
  inputs."playground-master".dir = "nimpkgs/p/playground/master";

    inputs."playground-v0_1_0".type = "github";
  inputs."playground-v0_1_0".owner = "riinr";
  inputs."playground-v0_1_0".repo = "flake-nimble";
  inputs."playground-v0_1_0".ref = "flake-pinning";
  inputs."playground-v0_1_0".dir = "nimpkgs/p/playground/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}