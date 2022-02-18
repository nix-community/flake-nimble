{
  description = ''libssh2 wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimssh2-master".type = "github";
  inputs."nimssh2-master".owner = "riinr";
  inputs."nimssh2-master".repo = "flake-nimble";
  inputs."nimssh2-master".ref = "flake-pinning";
  inputs."nimssh2-master".dir = "nimpkgs/n/nimssh2/master";

    inputs."nimssh2-v0_1_1".type = "github";
  inputs."nimssh2-v0_1_1".owner = "riinr";
  inputs."nimssh2-v0_1_1".repo = "flake-nimble";
  inputs."nimssh2-v0_1_1".ref = "flake-pinning";
  inputs."nimssh2-v0_1_1".dir = "nimpkgs/n/nimssh2/v0_1_1";

    inputs."nimssh2-v0_1_2".type = "github";
  inputs."nimssh2-v0_1_2".owner = "riinr";
  inputs."nimssh2-v0_1_2".repo = "flake-nimble";
  inputs."nimssh2-v0_1_2".ref = "flake-pinning";
  inputs."nimssh2-v0_1_2".dir = "nimpkgs/n/nimssh2/v0_1_2";

    inputs."nimssh2-v0_1_3".type = "github";
  inputs."nimssh2-v0_1_3".owner = "riinr";
  inputs."nimssh2-v0_1_3".repo = "flake-nimble";
  inputs."nimssh2-v0_1_3".ref = "flake-pinning";
  inputs."nimssh2-v0_1_3".dir = "nimpkgs/n/nimssh2/v0_1_3";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}