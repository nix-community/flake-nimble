{
  description = ''Hashicorp Vault HTTP Client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."vaultclient-master".type = "github";
  inputs."vaultclient-master".owner = "riinr";
  inputs."vaultclient-master".repo = "flake-nimble";
  inputs."vaultclient-master".ref = "flake-pinning";
  inputs."vaultclient-master".dir = "nimpkgs/v/vaultclient/master";

    inputs."vaultclient-0_1_0".type = "github";
  inputs."vaultclient-0_1_0".owner = "riinr";
  inputs."vaultclient-0_1_0".repo = "flake-nimble";
  inputs."vaultclient-0_1_0".ref = "flake-pinning";
  inputs."vaultclient-0_1_0".dir = "nimpkgs/v/vaultclient/0_1_0";

    inputs."vaultclient-0_1_1".type = "github";
  inputs."vaultclient-0_1_1".owner = "riinr";
  inputs."vaultclient-0_1_1".repo = "flake-nimble";
  inputs."vaultclient-0_1_1".ref = "flake-pinning";
  inputs."vaultclient-0_1_1".dir = "nimpkgs/v/vaultclient/0_1_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}