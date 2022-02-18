{
  description = ''Basic Option[T] library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."optional_t-master".type = "github";
  inputs."optional_t-master".owner = "riinr";
  inputs."optional_t-master".repo = "flake-nimble";
  inputs."optional_t-master".ref = "flake-pinning";
  inputs."optional_t-master".dir = "nimpkgs/o/optional_t/master";

    inputs."optional_t-1_0_0".type = "github";
  inputs."optional_t-1_0_0".owner = "riinr";
  inputs."optional_t-1_0_0".repo = "flake-nimble";
  inputs."optional_t-1_0_0".ref = "flake-pinning";
  inputs."optional_t-1_0_0".dir = "nimpkgs/o/optional_t/1_0_0";

    inputs."optional_t-1_1_0".type = "github";
  inputs."optional_t-1_1_0".owner = "riinr";
  inputs."optional_t-1_1_0".repo = "flake-nimble";
  inputs."optional_t-1_1_0".ref = "flake-pinning";
  inputs."optional_t-1_1_0".dir = "nimpkgs/o/optional_t/1_1_0";

    inputs."optional_t-1_2_0".type = "github";
  inputs."optional_t-1_2_0".owner = "riinr";
  inputs."optional_t-1_2_0".repo = "flake-nimble";
  inputs."optional_t-1_2_0".ref = "flake-pinning";
  inputs."optional_t-1_2_0".dir = "nimpkgs/o/optional_t/1_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}