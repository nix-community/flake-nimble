{
  description = ''Bindings to libopusenc'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."opusenc-master".type = "github";
  inputs."opusenc-master".owner = "riinr";
  inputs."opusenc-master".repo = "flake-nimble";
  inputs."opusenc-master".ref = "flake-pinning";
  inputs."opusenc-master".dir = "nimpkgs/o/opusenc/master";

    inputs."opusenc-v0_1_0".type = "github";
  inputs."opusenc-v0_1_0".owner = "riinr";
  inputs."opusenc-v0_1_0".repo = "flake-nimble";
  inputs."opusenc-v0_1_0".ref = "flake-pinning";
  inputs."opusenc-v0_1_0".dir = "nimpkgs/o/opusenc/v0_1_0";

    inputs."opusenc-v0_2_0".type = "github";
  inputs."opusenc-v0_2_0".owner = "riinr";
  inputs."opusenc-v0_2_0".repo = "flake-nimble";
  inputs."opusenc-v0_2_0".ref = "flake-pinning";
  inputs."opusenc-v0_2_0".dir = "nimpkgs/o/opusenc/v0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}