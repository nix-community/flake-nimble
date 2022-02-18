{
  description = ''Implements a simple IRC client.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."irc-master".type = "github";
  inputs."irc-master".owner = "riinr";
  inputs."irc-master".repo = "flake-nimble";
  inputs."irc-master".ref = "flake-pinning";
  inputs."irc-master".dir = "nimpkgs/i/irc/master";

    inputs."irc-v0_2_0".type = "github";
  inputs."irc-v0_2_0".owner = "riinr";
  inputs."irc-v0_2_0".repo = "flake-nimble";
  inputs."irc-v0_2_0".ref = "flake-pinning";
  inputs."irc-v0_2_0".dir = "nimpkgs/i/irc/v0_2_0";

    inputs."irc-v0_2_1".type = "github";
  inputs."irc-v0_2_1".owner = "riinr";
  inputs."irc-v0_2_1".repo = "flake-nimble";
  inputs."irc-v0_2_1".ref = "flake-pinning";
  inputs."irc-v0_2_1".dir = "nimpkgs/i/irc/v0_2_1";

    inputs."irc-v0_3_0".type = "github";
  inputs."irc-v0_3_0".owner = "riinr";
  inputs."irc-v0_3_0".repo = "flake-nimble";
  inputs."irc-v0_3_0".ref = "flake-pinning";
  inputs."irc-v0_3_0".dir = "nimpkgs/i/irc/v0_3_0";

    inputs."irc-v0_4_0".type = "github";
  inputs."irc-v0_4_0".owner = "riinr";
  inputs."irc-v0_4_0".repo = "flake-nimble";
  inputs."irc-v0_4_0".ref = "flake-pinning";
  inputs."irc-v0_4_0".dir = "nimpkgs/i/irc/v0_4_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}