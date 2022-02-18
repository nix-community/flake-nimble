{
  description = ''IMAP client library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."imap-master".type = "github";
  inputs."imap-master".owner = "riinr";
  inputs."imap-master".repo = "flake-nimble";
  inputs."imap-master".ref = "flake-pinning";
  inputs."imap-master".dir = "nimpkgs/i/imap/master";

    inputs."imap-v0_1_0".type = "github";
  inputs."imap-v0_1_0".owner = "riinr";
  inputs."imap-v0_1_0".repo = "flake-nimble";
  inputs."imap-v0_1_0".ref = "flake-pinning";
  inputs."imap-v0_1_0".dir = "nimpkgs/i/imap/v0_1_0";

    inputs."imap-v0_2_0".type = "github";
  inputs."imap-v0_2_0".owner = "riinr";
  inputs."imap-v0_2_0".repo = "flake-nimble";
  inputs."imap-v0_2_0".ref = "flake-pinning";
  inputs."imap-v0_2_0".dir = "nimpkgs/i/imap/v0_2_0";

    inputs."imap-v0_2_1".type = "github";
  inputs."imap-v0_2_1".owner = "riinr";
  inputs."imap-v0_2_1".repo = "flake-nimble";
  inputs."imap-v0_2_1".ref = "flake-pinning";
  inputs."imap-v0_2_1".dir = "nimpkgs/i/imap/v0_2_1";

    inputs."imap-v0_2_2".type = "github";
  inputs."imap-v0_2_2".owner = "riinr";
  inputs."imap-v0_2_2".repo = "flake-nimble";
  inputs."imap-v0_2_2".ref = "flake-pinning";
  inputs."imap-v0_2_2".dir = "nimpkgs/i/imap/v0_2_2";

    inputs."imap-v0_3_0".type = "github";
  inputs."imap-v0_3_0".owner = "riinr";
  inputs."imap-v0_3_0".repo = "flake-nimble";
  inputs."imap-v0_3_0".ref = "flake-pinning";
  inputs."imap-v0_3_0".dir = "nimpkgs/i/imap/v0_3_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}