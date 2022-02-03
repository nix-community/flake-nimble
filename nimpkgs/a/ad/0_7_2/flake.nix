{
  description = ''A simple RPN calculator'';
  inputs.src-ad-0_7_2.flake = false;
  inputs.src-ad-0_7_2.type = "github";
  inputs.src-ad-0_7_2.owner = "subsetpark";
  inputs.src-ad-0_7_2.repo = "ad";
  inputs.src-ad-0_7_2.ref = "refs/tags/0.7.2";
  
  
  inputs."bignum".url = "path:../../../b/bignum";
  inputs."bignum".type = "github";
  inputs."bignum".owner = "riinr";
  inputs."bignum".repo = "flake-nimble";
  inputs."bignum".ref = "flake-pinning";
  inputs."bignum".dir = "nimpkgs/b/bignum";

  outputs = { self, nixpkgs, src-ad-0_7_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ad-0_7_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ad-0_7_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}