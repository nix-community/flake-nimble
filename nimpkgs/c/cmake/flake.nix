{
  description = ''CMake for Nimble'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."cmake-master".type = "github";
  inputs."cmake-master".owner = "riinr";
  inputs."cmake-master".repo = "flake-nimble";
  inputs."cmake-master".ref = "flake-pinning";
  inputs."cmake-master".dir = "nimpkgs/c/cmake/master";

    inputs."cmake-v0_1_1".type = "github";
  inputs."cmake-v0_1_1".owner = "riinr";
  inputs."cmake-v0_1_1".repo = "flake-nimble";
  inputs."cmake-v0_1_1".ref = "flake-pinning";
  inputs."cmake-v0_1_1".dir = "nimpkgs/c/cmake/v0_1_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}