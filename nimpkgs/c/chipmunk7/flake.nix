{
  description = ''Bindings for Chipmunk, a fast and lightweight 2D game physics library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."chipmunk7-master".type = "github";
  inputs."chipmunk7-master".owner = "riinr";
  inputs."chipmunk7-master".repo = "flake-nimble";
  inputs."chipmunk7-master".ref = "flake-pinning";
  inputs."chipmunk7-master".dir = "nimpkgs/c/chipmunk7/master";

    inputs."chipmunk7-v0_3_0".type = "github";
  inputs."chipmunk7-v0_3_0".owner = "riinr";
  inputs."chipmunk7-v0_3_0".repo = "flake-nimble";
  inputs."chipmunk7-v0_3_0".ref = "flake-pinning";
  inputs."chipmunk7-v0_3_0".dir = "nimpkgs/c/chipmunk7/v0_3_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}