{
  description = ''128-bit integers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nint128-main".type = "github";
  inputs."nint128-main".owner = "riinr";
  inputs."nint128-main".repo = "flake-nimble";
  inputs."nint128-main".ref = "flake-pinning";
  inputs."nint128-main".dir = "nimpkgs/n/nint128/main";

    inputs."nint128-v0_1_0".type = "github";
  inputs."nint128-v0_1_0".owner = "riinr";
  inputs."nint128-v0_1_0".repo = "flake-nimble";
  inputs."nint128-v0_1_0".ref = "flake-pinning";
  inputs."nint128-v0_1_0".dir = "nimpkgs/n/nint128/v0_1_0";

    inputs."nint128-v0_2_0".type = "github";
  inputs."nint128-v0_2_0".owner = "riinr";
  inputs."nint128-v0_2_0".repo = "flake-nimble";
  inputs."nint128-v0_2_0".ref = "flake-pinning";
  inputs."nint128-v0_2_0".dir = "nimpkgs/n/nint128/v0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}