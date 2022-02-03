{
  description = ''Amazon Web Services Signature Version 4'';
  inputs.src-sigv4-1_0_3.flake = false;
  inputs.src-sigv4-1_0_3.type = "github";
  inputs.src-sigv4-1_0_3.owner = "disruptek";
  inputs.src-sigv4-1_0_3.repo = "sigv4";
  inputs.src-sigv4-1_0_3.ref = "refs/tags/1.0.3";
  
  
  inputs."nimcrypto".url = "path:../../../n/nimcrypto";
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  outputs = { self, nixpkgs, src-sigv4-1_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sigv4-1_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sigv4-1_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}