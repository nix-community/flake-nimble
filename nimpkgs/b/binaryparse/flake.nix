{
  description = ''Binary parser (and writer) in pure Nim. Generates efficient parsing procedures that handle many commonly seen patterns seen in binary files and does sub-byte field reading.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."binaryparse-master".type = "github";
  inputs."binaryparse-master".owner = "riinr";
  inputs."binaryparse-master".repo = "flake-nimble";
  inputs."binaryparse-master".ref = "flake-pinning";
  inputs."binaryparse-master".dir = "nimpkgs/b/binaryparse/master";

    inputs."binaryparse-v0_2_4".type = "github";
  inputs."binaryparse-v0_2_4".owner = "riinr";
  inputs."binaryparse-v0_2_4".repo = "flake-nimble";
  inputs."binaryparse-v0_2_4".ref = "flake-pinning";
  inputs."binaryparse-v0_2_4".dir = "nimpkgs/b/binaryparse/v0_2_4";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}