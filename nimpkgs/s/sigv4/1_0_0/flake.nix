{
  description = ''Amazon Web Services Signature Version 4'';
  inputs.src-sigv4-1_0_0.flake = false;
  inputs.src-sigv4-1_0_0.type = "github";
  inputs.src-sigv4-1_0_0.owner = "disruptek";
  inputs.src-sigv4-1_0_0.repo = "sigv4";
  inputs.src-sigv4-1_0_0.ref = "refs/tags/1.0.0";
  
  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  outputs = { self, nixpkgs, src-sigv4-1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sigv4-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sigv4-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}