{
  description = ''A blog post generator for people with priorities.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."jeknil-master".type = "github";
  inputs."jeknil-master".owner = "riinr";
  inputs."jeknil-master".repo = "flake-nimble";
  inputs."jeknil-master".ref = "flake-pinning";
  inputs."jeknil-master".dir = "nimpkgs/j/jeknil/master";

    inputs."jeknil-v0_1_0".type = "github";
  inputs."jeknil-v0_1_0".owner = "riinr";
  inputs."jeknil-v0_1_0".repo = "flake-nimble";
  inputs."jeknil-v0_1_0".ref = "flake-pinning";
  inputs."jeknil-v0_1_0".dir = "nimpkgs/j/jeknil/v0_1_0";

    inputs."jeknil-v0_1_1".type = "github";
  inputs."jeknil-v0_1_1".owner = "riinr";
  inputs."jeknil-v0_1_1".repo = "flake-nimble";
  inputs."jeknil-v0_1_1".ref = "flake-pinning";
  inputs."jeknil-v0_1_1".dir = "nimpkgs/j/jeknil/v0_1_1";

    inputs."jeknil-v0_2_0".type = "github";
  inputs."jeknil-v0_2_0".owner = "riinr";
  inputs."jeknil-v0_2_0".repo = "flake-nimble";
  inputs."jeknil-v0_2_0".ref = "flake-pinning";
  inputs."jeknil-v0_2_0".dir = "nimpkgs/j/jeknil/v0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}