{
  description = ''Convert a Nim file or string to Markdown'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimtomd-master".type = "github";
  inputs."nimtomd-master".owner = "riinr";
  inputs."nimtomd-master".repo = "flake-nimble";
  inputs."nimtomd-master".ref = "flake-pinning";
  inputs."nimtomd-master".dir = "nimpkgs/n/nimtomd/master";

    inputs."nimtomd-v0_2_0".type = "github";
  inputs."nimtomd-v0_2_0".owner = "riinr";
  inputs."nimtomd-v0_2_0".repo = "flake-nimble";
  inputs."nimtomd-v0_2_0".ref = "flake-pinning";
  inputs."nimtomd-v0_2_0".dir = "nimpkgs/n/nimtomd/v0_2_0";

    inputs."nimtomd-v0_2_1".type = "github";
  inputs."nimtomd-v0_2_1".owner = "riinr";
  inputs."nimtomd-v0_2_1".repo = "flake-nimble";
  inputs."nimtomd-v0_2_1".ref = "flake-pinning";
  inputs."nimtomd-v0_2_1".dir = "nimpkgs/n/nimtomd/v0_2_1";

    inputs."nimtomd-v0_3_1".type = "github";
  inputs."nimtomd-v0_3_1".owner = "riinr";
  inputs."nimtomd-v0_3_1".repo = "flake-nimble";
  inputs."nimtomd-v0_3_1".ref = "flake-pinning";
  inputs."nimtomd-v0_3_1".dir = "nimpkgs/n/nimtomd/v0_3_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}