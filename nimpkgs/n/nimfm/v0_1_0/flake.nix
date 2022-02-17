{
  description = ''A library for factorization machines in Nim.'';
  inputs.src-nimfm-v0_1_0.flake = false;
  inputs.src-nimfm-v0_1_0.type = "github";
  inputs.src-nimfm-v0_1_0.owner = "neonnnnn";
  inputs.src-nimfm-v0_1_0.repo = "nimfm";
  inputs.src-nimfm-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-nimfm-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfm-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimfm-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}