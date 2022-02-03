{
  description = ''Wrapper around the GMP bindings for the Nim language.'';
  inputs.src-bignum-1_0_3.flake = false;
  inputs.src-bignum-1_0_3.type = "github";
  inputs.src-bignum-1_0_3.owner = "SciNim";
  inputs.src-bignum-1_0_3.repo = "bignum";
  inputs.src-bignum-1_0_3.ref = "refs/tags/1.0.3";
  
  
  inputs."gmp".url = "path:../../../g/gmp";
  inputs."gmp".type = "github";
  inputs."gmp".owner = "riinr";
  inputs."gmp".repo = "flake-nimble";
  inputs."gmp".ref = "flake-pinning";
  inputs."gmp".dir = "nimpkgs/g/gmp";

  outputs = { self, nixpkgs, src-bignum-1_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bignum-1_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bignum-1_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}