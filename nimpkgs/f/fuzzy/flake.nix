{
  description = ''Pure nim fuzzy search implementation. Supports substrings etc'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."fuzzy-master".type = "github";
  inputs."fuzzy-master".owner = "riinr";
  inputs."fuzzy-master".repo = "flake-nimble";
  inputs."fuzzy-master".ref = "flake-pinning";
  inputs."fuzzy-master".dir = "nimpkgs/f/fuzzy/master";

    inputs."fuzzy-v0_1_0".type = "github";
  inputs."fuzzy-v0_1_0".owner = "riinr";
  inputs."fuzzy-v0_1_0".repo = "flake-nimble";
  inputs."fuzzy-v0_1_0".ref = "flake-pinning";
  inputs."fuzzy-v0_1_0".dir = "nimpkgs/f/fuzzy/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}