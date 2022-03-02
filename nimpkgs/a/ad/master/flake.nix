{
  description = ''A simple RPN calculator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ad-master.flake = false;
  inputs.src-ad-master.type = "github";
  inputs.src-ad-master.owner = "subsetpark";
  inputs.src-ad-master.repo = "ad";
  inputs.src-ad-master.ref = "refs/heads/master";
  inputs.src-ad-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."bignum".type = "github";
  # inputs."bignum".owner = "riinr";
  # inputs."bignum".repo = "flake-nimble";
  # inputs."bignum".ref = "flake-pinning";
  # inputs."bignum".dir = "nimpkgs/b/bignum";
  # inputs."bignum".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."bignum".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ad-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ad-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ad-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}