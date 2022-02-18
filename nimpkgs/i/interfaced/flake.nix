{
  description = ''Go-like interfaces'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."interfaced-master".type = "github";
  inputs."interfaced-master".owner = "riinr";
  inputs."interfaced-master".repo = "flake-nimble";
  inputs."interfaced-master".ref = "flake-pinning";
  inputs."interfaced-master".dir = "nimpkgs/i/interfaced/master";

    inputs."interfaced-0_1_0".type = "github";
  inputs."interfaced-0_1_0".owner = "riinr";
  inputs."interfaced-0_1_0".repo = "flake-nimble";
  inputs."interfaced-0_1_0".ref = "flake-pinning";
  inputs."interfaced-0_1_0".dir = "nimpkgs/i/interfaced/0_1_0";

    inputs."interfaced-0_2_0".type = "github";
  inputs."interfaced-0_2_0".owner = "riinr";
  inputs."interfaced-0_2_0".repo = "flake-nimble";
  inputs."interfaced-0_2_0".ref = "flake-pinning";
  inputs."interfaced-0_2_0".dir = "nimpkgs/i/interfaced/0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}