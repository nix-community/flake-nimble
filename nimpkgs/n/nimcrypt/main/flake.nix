{
  description = ''Implementation of Unix crypt with support for Crypt-MD5, Crypt-SHA256 and Crypt-SHA512'';
  inputs.src-nimcrypt-main.flake = false;
  inputs.src-nimcrypt-main.type = "github";
  inputs.src-nimcrypt-main.owner = "napalu";
  inputs.src-nimcrypt-main.repo = "nimcrypt";
  inputs.src-nimcrypt-main.ref = "refs/heads/main";
  
  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  outputs = { self, nixpkgs, src-nimcrypt-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcrypt-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimcrypt-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}