{
  description = ''Shamir secret sharing'';
  inputs.src-sss-v0_1_1.flake = false;
  inputs.src-sss-v0_1_1.type = "github";
  inputs.src-sss-v0_1_1.owner = "markspanbroek";
  inputs.src-sss-v0_1_1.repo = "sss.nim";
  inputs.src-sss-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."nimterop".url = "path:../../../n/nimterop";
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-sss-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sss-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sss-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}