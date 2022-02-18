{
  description = ''Wrapper around the GMP bindings for the Nim language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-bignum-1_0_4.flake = false;
  inputs.src-bignum-1_0_4.type = "github";
  inputs.src-bignum-1_0_4.owner = "SciNim";
  inputs.src-bignum-1_0_4.repo = "bignum";
  inputs.src-bignum-1_0_4.ref = "refs/tags/1.0.4";
  
  
  inputs."gmp".type = "github";
  inputs."gmp".owner = "riinr";
  inputs."gmp".repo = "flake-nimble";
  inputs."gmp".ref = "flake-pinning";
  inputs."gmp".dir = "nimpkgs/g/gmp";

  outputs = { self, nixpkgs, flakeNimbleLib, src-bignum-1_0_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bignum-1_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bignum-1_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}