{
  description = ''Implementation of Unix crypt with support for Crypt-MD5, Crypt-SHA256 and Crypt-SHA512'';
  inputs.src-nimcrypt-v0_0_6.flake = false;
  inputs.src-nimcrypt-v0_0_6.type = "github";
  inputs.src-nimcrypt-v0_0_6.owner = "napalu";
  inputs.src-nimcrypt-v0_0_6.repo = "nimcrypt";
  inputs.src-nimcrypt-v0_0_6.ref = "refs/tags/v0.0.6";
  
  
  inputs."nimcrypto".url = "path:../../../n/nimcrypto";
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  outputs = { self, nixpkgs, src-nimcrypt-v0_0_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcrypt-v0_0_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimcrypt-v0_0_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}