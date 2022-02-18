{
  description = ''Nim wrapper for the FMOD Low Level C API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."fmod-master".type = "github";
  inputs."fmod-master".owner = "riinr";
  inputs."fmod-master".repo = "flake-nimble";
  inputs."fmod-master".ref = "flake-pinning";
  inputs."fmod-master".dir = "nimpkgs/f/fmod/master";

    inputs."fmod-v0_1_0".type = "github";
  inputs."fmod-v0_1_0".owner = "riinr";
  inputs."fmod-v0_1_0".repo = "flake-nimble";
  inputs."fmod-v0_1_0".ref = "flake-pinning";
  inputs."fmod-v0_1_0".dir = "nimpkgs/f/fmod/v0_1_0";

    inputs."fmod-v0_1_1".type = "github";
  inputs."fmod-v0_1_1".owner = "riinr";
  inputs."fmod-v0_1_1".repo = "flake-nimble";
  inputs."fmod-v0_1_1".ref = "flake-pinning";
  inputs."fmod-v0_1_1".dir = "nimpkgs/f/fmod/v0_1_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}