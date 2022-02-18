{
  description = ''Bytes utils for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."bio-master".type = "github";
  inputs."bio-master".owner = "riinr";
  inputs."bio-master".repo = "flake-nimble";
  inputs."bio-master".ref = "flake-pinning";
  inputs."bio-master".dir = "nimpkgs/b/bio/master";

    inputs."bio-v0_1_0".type = "github";
  inputs."bio-v0_1_0".owner = "riinr";
  inputs."bio-v0_1_0".repo = "flake-nimble";
  inputs."bio-v0_1_0".ref = "flake-pinning";
  inputs."bio-v0_1_0".dir = "nimpkgs/b/bio/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}