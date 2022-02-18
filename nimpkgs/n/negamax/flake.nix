{
  description = ''Negamax AI search-tree algorithm for two player games'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."negamax-master".type = "github";
  inputs."negamax-master".owner = "riinr";
  inputs."negamax-master".repo = "flake-nimble";
  inputs."negamax-master".ref = "flake-pinning";
  inputs."negamax-master".dir = "nimpkgs/n/negamax/master";

    inputs."negamax-v0_0_1".type = "github";
  inputs."negamax-v0_0_1".owner = "riinr";
  inputs."negamax-v0_0_1".repo = "flake-nimble";
  inputs."negamax-v0_0_1".ref = "flake-pinning";
  inputs."negamax-v0_0_1".dir = "nimpkgs/n/negamax/v0_0_1";

    inputs."negamax-v0_0_2".type = "github";
  inputs."negamax-v0_0_2".owner = "riinr";
  inputs."negamax-v0_0_2".repo = "flake-nimble";
  inputs."negamax-v0_0_2".ref = "flake-pinning";
  inputs."negamax-v0_0_2".dir = "nimpkgs/n/negamax/v0_0_2";

    inputs."negamax-v0_0_3".type = "github";
  inputs."negamax-v0_0_3".owner = "riinr";
  inputs."negamax-v0_0_3".repo = "flake-nimble";
  inputs."negamax-v0_0_3".ref = "flake-pinning";
  inputs."negamax-v0_0_3".dir = "nimpkgs/n/negamax/v0_0_3";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}