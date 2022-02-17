{
  description = ''For karax html preview.'';
  inputs.src-kview-v0_1_2.flake = false;
  inputs.src-kview-v0_1_2.type = "github";
  inputs.src-kview-v0_1_2.owner = "planety";
  inputs.src-kview-v0_1_2.repo = "kview";
  inputs.src-kview-v0_1_2.ref = "refs/tags/v0.1.2";
  
  
  inputs."karax".type = "github";
  inputs."karax".owner = "riinr";
  inputs."karax".repo = "flake-nimble";
  inputs."karax".ref = "flake-pinning";
  inputs."karax".dir = "nimpkgs/k/karax";

  outputs = { self, nixpkgs, src-kview-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kview-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-kview-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}