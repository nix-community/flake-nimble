{
  description = ''DNS /etc/hosts file manager, Block 1 Million malicious domains with 1 command'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."dnsprotec-master".type = "github";
  inputs."dnsprotec-master".owner = "riinr";
  inputs."dnsprotec-master".repo = "flake-nimble";
  inputs."dnsprotec-master".ref = "flake-pinning";
  inputs."dnsprotec-master".dir = "nimpkgs/d/dnsprotec/master";

    inputs."dnsprotec-0_0_1".type = "github";
  inputs."dnsprotec-0_0_1".owner = "riinr";
  inputs."dnsprotec-0_0_1".repo = "flake-nimble";
  inputs."dnsprotec-0_0_1".ref = "flake-pinning";
  inputs."dnsprotec-0_0_1".dir = "nimpkgs/d/dnsprotec/0_0_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}