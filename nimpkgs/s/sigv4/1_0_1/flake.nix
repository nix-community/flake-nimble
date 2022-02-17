{
  description = ''Amazon Web Services Signature Version 4'';
  inputs.src-sigv4-1_0_1.flake = false;
  inputs.src-sigv4-1_0_1.type = "github";
  inputs.src-sigv4-1_0_1.owner = "disruptek";
  inputs.src-sigv4-1_0_1.repo = "sigv4";
  inputs.src-sigv4-1_0_1.ref = "refs/tags/1.0.1";
  
  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  outputs = { self, nixpkgs, src-sigv4-1_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sigv4-1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sigv4-1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}