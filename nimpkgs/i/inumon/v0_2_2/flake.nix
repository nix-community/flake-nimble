{
  description = ''A high-level image I/O and manipulation library for Nim.'';
  inputs.src-inumon-v0_2_2.flake = false;
  inputs.src-inumon-v0_2_2.type = "github";
  inputs.src-inumon-v0_2_2.owner = "dizzyliam";
  inputs.src-inumon-v0_2_2.repo = "inumon";
  inputs.src-inumon-v0_2_2.ref = "refs/tags/v0.2.2";
  
  
  inputs."nimterop".url = "path:../../../n/nimterop";
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  
  inputs."arraymancer".url = "path:../../../a/arraymancer";
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";

  
  inputs."nigui".url = "path:../../../n/nigui";
  inputs."nigui".type = "github";
  inputs."nigui".owner = "riinr";
  inputs."nigui".repo = "flake-nimble";
  inputs."nigui".ref = "flake-pinning";
  inputs."nigui".dir = "nimpkgs/n/nigui";

  outputs = { self, nixpkgs, src-inumon-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-inumon-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-inumon-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}