{
  description = ''A simple RPN calculator'';
  inputs.src-ad-master.flake = false;
  inputs.src-ad-master.type = "github";
  inputs.src-ad-master.owner = "subsetpark";
  inputs.src-ad-master.repo = "ad";
  inputs.src-ad-master.ref = "refs/heads/master";
  
  
  inputs."bignum".type = "github";
  inputs."bignum".owner = "riinr";
  inputs."bignum".repo = "flake-nimble";
  inputs."bignum".ref = "flake-pinning";
  inputs."bignum".dir = "nimpkgs/b/bignum";

  outputs = { self, nixpkgs, src-ad-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ad-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ad-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}