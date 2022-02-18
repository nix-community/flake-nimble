{
  description = ''Zero-wrapping C imports in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."futhark-master".type = "github";
  inputs."futhark-master".owner = "riinr";
  inputs."futhark-master".repo = "flake-nimble";
  inputs."futhark-master".ref = "flake-pinning";
  inputs."futhark-master".dir = "nimpkgs/f/futhark/master";

    inputs."futhark-v0_3_0".type = "github";
  inputs."futhark-v0_3_0".owner = "riinr";
  inputs."futhark-v0_3_0".repo = "flake-nimble";
  inputs."futhark-v0_3_0".ref = "flake-pinning";
  inputs."futhark-v0_3_0".dir = "nimpkgs/f/futhark/v0_3_0";

    inputs."futhark-v0_3_1".type = "github";
  inputs."futhark-v0_3_1".owner = "riinr";
  inputs."futhark-v0_3_1".repo = "flake-nimble";
  inputs."futhark-v0_3_1".ref = "flake-pinning";
  inputs."futhark-v0_3_1".dir = "nimpkgs/f/futhark/v0_3_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}