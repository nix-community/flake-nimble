{
  description = ''GnuTLS wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."gnutls-master".type = "github";
  inputs."gnutls-master".owner = "riinr";
  inputs."gnutls-master".repo = "flake-nimble";
  inputs."gnutls-master".ref = "flake-pinning";
  inputs."gnutls-master".dir = "nimpkgs/g/gnutls/master";

    inputs."gnutls-0_1_0".type = "github";
  inputs."gnutls-0_1_0".owner = "riinr";
  inputs."gnutls-0_1_0".repo = "flake-nimble";
  inputs."gnutls-0_1_0".ref = "flake-pinning";
  inputs."gnutls-0_1_0".dir = "nimpkgs/g/gnutls/0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}