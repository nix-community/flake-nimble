{
  description = ''wrapper for the GNU multiple precision arithmetic library (GMP)'';
  inputs.src-gmp-v0_2_3.flake = false;
  inputs.src-gmp-v0_2_3.type = "github";
  inputs.src-gmp-v0_2_3.owner = "subsetpark";
  inputs.src-gmp-v0_2_3.repo = "nim-gmp";
  inputs.src-gmp-v0_2_3.ref = "refs/tags/v0.2.3";
  
  outputs = { self, nixpkgs, src-gmp-v0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gmp-v0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gmp-v0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}