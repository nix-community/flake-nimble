{
  description = ''Nim wrapper for libclipboard'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimclipboard-master".type = "github";
  inputs."nimclipboard-master".owner = "riinr";
  inputs."nimclipboard-master".repo = "flake-nimble";
  inputs."nimclipboard-master".ref = "flake-pinning";
  inputs."nimclipboard-master".dir = "nimpkgs/n/nimclipboard/master";

    inputs."nimclipboard-v0_1_0".type = "github";
  inputs."nimclipboard-v0_1_0".owner = "riinr";
  inputs."nimclipboard-v0_1_0".repo = "flake-nimble";
  inputs."nimclipboard-v0_1_0".ref = "flake-pinning";
  inputs."nimclipboard-v0_1_0".dir = "nimpkgs/n/nimclipboard/v0_1_0";

    inputs."nimclipboard-v0_1_1".type = "github";
  inputs."nimclipboard-v0_1_1".owner = "riinr";
  inputs."nimclipboard-v0_1_1".repo = "flake-nimble";
  inputs."nimclipboard-v0_1_1".ref = "flake-pinning";
  inputs."nimclipboard-v0_1_1".dir = "nimpkgs/n/nimclipboard/v0_1_1";

    inputs."nimclipboard-v0_1_2".type = "github";
  inputs."nimclipboard-v0_1_2".owner = "riinr";
  inputs."nimclipboard-v0_1_2".repo = "flake-nimble";
  inputs."nimclipboard-v0_1_2".ref = "flake-pinning";
  inputs."nimclipboard-v0_1_2".dir = "nimpkgs/n/nimclipboard/v0_1_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}