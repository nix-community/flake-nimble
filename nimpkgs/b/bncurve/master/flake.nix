{
  description = ''Nim Barreto-Naehrig pairing-friendly elliptic curve implementation'';
  inputs.src-bncurve-master.flake = false;
  inputs.src-bncurve-master.type = "github";
  inputs.src-bncurve-master.owner = "status-im";
  inputs.src-bncurve-master.repo = "nim-bncurve";
  inputs.src-bncurve-master.ref = "refs/heads/master";
  
  
  inputs."nimcrypto".url = "path:../../../n/nimcrypto";
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  outputs = { self, nixpkgs, src-bncurve-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bncurve-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bncurve-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}