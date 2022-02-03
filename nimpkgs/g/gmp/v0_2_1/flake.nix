{
  description = ''wrapper for the GNU multiple precision arithmetic library (GMP)'';
  inputs.src-gmp-v0_2_1.flake = false;
  inputs.src-gmp-v0_2_1.type = "github";
  inputs.src-gmp-v0_2_1.owner = "subsetpark";
  inputs.src-gmp-v0_2_1.repo = "nim-gmp";
  inputs.src-gmp-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-gmp-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gmp-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gmp-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}