{
  description = ''A tensor (multidimensional array) library for Nim'';
  inputs.src-arraymancer-v0_3_0.flake = false;
  inputs.src-arraymancer-v0_3_0.type = "github";
  inputs.src-arraymancer-v0_3_0.owner = "mratsim";
  inputs.src-arraymancer-v0_3_0.repo = "Arraymancer";
  inputs.src-arraymancer-v0_3_0.ref = "refs/tags/v0.3.0";
  
  
  inputs."nimblas".type = "github";
  inputs."nimblas".owner = "riinr";
  inputs."nimblas".repo = "flake-nimble";
  inputs."nimblas".ref = "flake-pinning";
  inputs."nimblas".dir = "nimpkgs/n/nimblas";

  
  inputs."nimcuda".type = "github";
  inputs."nimcuda".owner = "riinr";
  inputs."nimcuda".repo = "flake-nimble";
  inputs."nimcuda".ref = "flake-pinning";
  inputs."nimcuda".dir = "nimpkgs/n/nimcuda";

  outputs = { self, nixpkgs, src-arraymancer-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arraymancer-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-arraymancer-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}