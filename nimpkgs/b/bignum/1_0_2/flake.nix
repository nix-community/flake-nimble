{
  description = ''Wrapper around the GMP bindings for the Nim language.'';
  inputs.src-bignum-1_0_2.flake = false;
  inputs.src-bignum-1_0_2.type = "github";
  inputs.src-bignum-1_0_2.owner = "SciNim";
  inputs.src-bignum-1_0_2.repo = "bignum";
  inputs.src-bignum-1_0_2.ref = "refs/tags/1.0.2";
  
  
  inputs."gmp".url = "path:../../../g/gmp";
  inputs."gmp".type = "github";
  inputs."gmp".owner = "riinr";
  inputs."gmp".repo = "flake-nimble";
  inputs."gmp".ref = "flake-pinning";
  inputs."gmp".dir = "nimpkgs/g/gmp";

  outputs = { self, nixpkgs, src-bignum-1_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bignum-1_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bignum-1_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}