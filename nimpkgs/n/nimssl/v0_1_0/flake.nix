{
  description = ''OpenSSL wrapper for Nim'';
  inputs.src-nimssl-v0_1_0.flake = false;
  inputs.src-nimssl-v0_1_0.type = "github";
  inputs.src-nimssl-v0_1_0.owner = "genotrance";
  inputs.src-nimssl-v0_1_0.repo = "nimssl";
  inputs.src-nimssl-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."nimgen".url = "path:../../../n/nimgen";
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";

  outputs = { self, nixpkgs, src-nimssl-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimssl-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimssl-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}