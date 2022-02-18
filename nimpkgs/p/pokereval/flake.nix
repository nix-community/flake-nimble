{
  description = ''A poker hand evaluator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."pokereval-master".type = "github";
  inputs."pokereval-master".owner = "riinr";
  inputs."pokereval-master".repo = "flake-nimble";
  inputs."pokereval-master".ref = "flake-pinning";
  inputs."pokereval-master".dir = "nimpkgs/p/pokereval/master";

    inputs."pokereval-v0_1_0".type = "github";
  inputs."pokereval-v0_1_0".owner = "riinr";
  inputs."pokereval-v0_1_0".repo = "flake-nimble";
  inputs."pokereval-v0_1_0".ref = "flake-pinning";
  inputs."pokereval-v0_1_0".dir = "nimpkgs/p/pokereval/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}