{
  description = ''The Levenshtein Nim module contains functions for fast computation of Levenshtein distance and string similarity.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimlevenshtein-master".type = "github";
  inputs."nimlevenshtein-master".owner = "riinr";
  inputs."nimlevenshtein-master".repo = "flake-nimble";
  inputs."nimlevenshtein-master".ref = "flake-pinning";
  inputs."nimlevenshtein-master".dir = "nimpkgs/n/nimlevenshtein/master";

    inputs."nimlevenshtein-0_1_0".type = "github";
  inputs."nimlevenshtein-0_1_0".owner = "riinr";
  inputs."nimlevenshtein-0_1_0".repo = "flake-nimble";
  inputs."nimlevenshtein-0_1_0".ref = "flake-pinning";
  inputs."nimlevenshtein-0_1_0".dir = "nimpkgs/n/nimlevenshtein/0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}