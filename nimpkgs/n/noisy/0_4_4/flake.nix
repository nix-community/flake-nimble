{
  description = ''SIMD-accelerated noise generation (Simplex, Perlin).'';
  inputs.src-noisy-0_4_4.flake = false;
  inputs.src-noisy-0_4_4.type = "github";
  inputs.src-noisy-0_4_4.owner = "guzba";
  inputs.src-noisy-0_4_4.repo = "noisy";
  inputs.src-noisy-0_4_4.ref = "refs/tags/0.4.4";
  
  
  inputs."nimsimd".url = "path:../../../n/nimsimd";
  inputs."nimsimd".type = "github";
  inputs."nimsimd".owner = "riinr";
  inputs."nimsimd".repo = "flake-nimble";
  inputs."nimsimd".ref = "flake-pinning";
  inputs."nimsimd".dir = "nimpkgs/n/nimsimd";

  outputs = { self, nixpkgs, src-noisy-0_4_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-noisy-0_4_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-noisy-0_4_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}