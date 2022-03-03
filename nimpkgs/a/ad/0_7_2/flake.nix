{
  description = ''A simple RPN calculator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ad-0_7_2.flake = false;
  inputs.src-ad-0_7_2.type = "github";
  inputs.src-ad-0_7_2.owner = "subsetpark";
  inputs.src-ad-0_7_2.repo = "ad";
  inputs.src-ad-0_7_2.ref = "refs/tags/0.7.2";
  inputs.src-ad-0_7_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."bignum".type = "github";
  # inputs."bignum".owner = "riinr";
  # inputs."bignum".repo = "flake-nimble";
  # inputs."bignum".ref = "flake-pinning";
  # inputs."bignum".dir = "nimpkgs/b/bignum";
  # inputs."bignum".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."bignum".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ad-0_7_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ad-0_7_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ad-0_7_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}