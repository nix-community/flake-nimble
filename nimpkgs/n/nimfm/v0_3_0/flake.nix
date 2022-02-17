{
  description = ''A library for factorization machines in Nim.'';
  inputs.src-nimfm-v0_3_0.flake = false;
  inputs.src-nimfm-v0_3_0.type = "github";
  inputs.src-nimfm-v0_3_0.owner = "neonnnnn";
  inputs.src-nimfm-v0_3_0.repo = "nimfm";
  inputs.src-nimfm-v0_3_0.ref = "refs/tags/v0.3.0";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."nimlapack".type = "github";
  inputs."nimlapack".owner = "riinr";
  inputs."nimlapack".repo = "flake-nimble";
  inputs."nimlapack".ref = "flake-pinning";
  inputs."nimlapack".dir = "nimpkgs/n/nimlapack";

  outputs = { self, nixpkgs, src-nimfm-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfm-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimfm-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}