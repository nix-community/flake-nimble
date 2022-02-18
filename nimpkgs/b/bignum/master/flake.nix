{
  description = ''Wrapper around the GMP bindings for the Nim language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-bignum-master.flake = false;
  inputs.src-bignum-master.type = "github";
  inputs.src-bignum-master.owner = "SciNim";
  inputs.src-bignum-master.repo = "bignum";
  inputs.src-bignum-master.ref = "refs/heads/master";
  
  
  inputs."gmp".type = "github";
  inputs."gmp".owner = "riinr";
  inputs."gmp".repo = "flake-nimble";
  inputs."gmp".ref = "flake-pinning";
  inputs."gmp".dir = "nimpkgs/g/gmp";

  outputs = { self, nixpkgs, flakeNimbleLib, src-bignum-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bignum-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bignum-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}