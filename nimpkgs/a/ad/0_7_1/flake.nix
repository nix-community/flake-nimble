{
  description = ''A simple RPN calculator'';
  inputs.src-ad-0_7_1.flake = false;
  inputs.src-ad-0_7_1.type = "github";
  inputs.src-ad-0_7_1.owner = "subsetpark";
  inputs.src-ad-0_7_1.repo = "ad";
  inputs.src-ad-0_7_1.ref = "refs/tags/0.7.1";
  
  
  inputs."bignum".type = "github";
  inputs."bignum".owner = "riinr";
  inputs."bignum".repo = "flake-nimble";
  inputs."bignum".ref = "flake-pinning";
  inputs."bignum".dir = "nimpkgs/b/bignum";

  outputs = { self, nixpkgs, src-ad-0_7_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ad-0_7_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ad-0_7_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}