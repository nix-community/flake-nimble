{
  description = ''A tensor (multidimensional array) library for Nim'';
  inputs.src-arraymancer-v0_1_1.flake = false;
  inputs.src-arraymancer-v0_1_1.type = "github";
  inputs.src-arraymancer-v0_1_1.owner = "mratsim";
  inputs.src-arraymancer-v0_1_1.repo = "Arraymancer";
  inputs.src-arraymancer-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."nimblas".type = "github";
  inputs."nimblas".owner = "riinr";
  inputs."nimblas".repo = "flake-nimble";
  inputs."nimblas".ref = "flake-pinning";
  inputs."nimblas".dir = "nimpkgs/n/nimblas";

  outputs = { self, nixpkgs, src-arraymancer-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arraymancer-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-arraymancer-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}