{
  description = ''WinKerberos wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimkerberos-master".type = "github";
  inputs."nimkerberos-master".owner = "riinr";
  inputs."nimkerberos-master".repo = "flake-nimble";
  inputs."nimkerberos-master".ref = "flake-pinning";
  inputs."nimkerberos-master".dir = "nimpkgs/n/nimkerberos/master";

    inputs."nimkerberos-v0_1_0".type = "github";
  inputs."nimkerberos-v0_1_0".owner = "riinr";
  inputs."nimkerberos-v0_1_0".repo = "flake-nimble";
  inputs."nimkerberos-v0_1_0".ref = "flake-pinning";
  inputs."nimkerberos-v0_1_0".dir = "nimpkgs/n/nimkerberos/v0_1_0";

    inputs."nimkerberos-v0_1_1".type = "github";
  inputs."nimkerberos-v0_1_1".owner = "riinr";
  inputs."nimkerberos-v0_1_1".repo = "flake-nimble";
  inputs."nimkerberos-v0_1_1".ref = "flake-pinning";
  inputs."nimkerberos-v0_1_1".dir = "nimpkgs/n/nimkerberos/v0_1_1";

    inputs."nimkerberos-v0_1_2".type = "github";
  inputs."nimkerberos-v0_1_2".owner = "riinr";
  inputs."nimkerberos-v0_1_2".repo = "flake-nimble";
  inputs."nimkerberos-v0_1_2".ref = "flake-pinning";
  inputs."nimkerberos-v0_1_2".dir = "nimpkgs/n/nimkerberos/v0_1_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}